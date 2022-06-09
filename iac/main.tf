terraform {
#   required_version = "~> 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
    token = {}
}

resource "digitalocean_kubernetes_node_pool" "k8s-iniciativa" {

    name = "k8s-iniciativa"
    region = "nyc1"
    version = "1.22.8-do.1"

    node_pool{
            name = "default"
            size = "s-2vcpu-2gb"
            node_count = 3
    }

}