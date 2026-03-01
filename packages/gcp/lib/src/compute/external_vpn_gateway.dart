import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_vpn_gateway_args.dart';
import 'external_vpn_gateway_interface.dart';

/// Represents a VPN gateway managed outside of GCP.
///
///
/// To get more information about ExternalVpnGateway, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways)
///
/// ## Example Usage
///
/// ### External Vpn Gateway
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "network-1",
///     routingMode: "GLOBAL",
///     autoCreateSubnetworks: false,
/// });
/// const haGateway = new gcp.compute.HaVpnGateway("ha_gateway", {
///     region: "us-central1",
///     name: "ha-vpn",
///     network: network.id,
/// });
/// const externalGateway = new gcp.compute.ExternalVpnGateway("external_gateway", {
///     name: "external-gateway",
///     redundancyType: "SINGLE_IP_INTERNALLY_REDUNDANT",
///     description: "An externally managed VPN gateway",
///     interfaces: [{
///         id: 0,
///         ipAddress: "8.8.8.8",
///     }],
/// });
/// const networkSubnet1 = new gcp.compute.Subnetwork("network_subnet1", {
///     name: "ha-vpn-subnet-1",
///     ipCidrRange: "10.0.1.0/24",
///     region: "us-central1",
///     network: network.id,
/// });
/// const networkSubnet2 = new gcp.compute.Subnetwork("network_subnet2", {
///     name: "ha-vpn-subnet-2",
///     ipCidrRange: "10.0.2.0/24",
///     region: "us-west1",
///     network: network.id,
/// });
/// const router1 = new gcp.compute.Router("router1", {
///     name: "ha-vpn-router1",
///     network: network.name,
///     bgp: {
///         asn: 64514,
///     },
/// });
/// const tunnel1 = new gcp.compute.VPNTunnel("tunnel1", {
///     name: "ha-vpn-tunnel1",
///     region: "us-central1",
///     vpnGateway: haGateway.id,
///     peerExternalGateway: externalGateway.id,
///     peerExternalGatewayInterface: 0,
///     sharedSecret: "a secret message",
///     router: router1.id,
///     vpnGatewayInterface: 0,
/// });
/// const tunnel2 = new gcp.compute.VPNTunnel("tunnel2", {
///     name: "ha-vpn-tunnel2",
///     region: "us-central1",
///     vpnGateway: haGateway.id,
///     peerExternalGateway: externalGateway.id,
///     peerExternalGatewayInterface: 0,
///     sharedSecret: "a secret message",
///     router: pulumi.interpolate` ${router1.id}`,
///     vpnGatewayInterface: 1,
/// });
/// const router1Interface1 = new gcp.compute.RouterInterface("router1_interface1", {
///     name: "router1-interface1",
///     router: router1.name,
///     region: "us-central1",
///     ipRange: "169.254.0.1/30",
///     vpnTunnel: tunnel1.name,
/// });
/// const router1Peer1 = new gcp.compute.RouterPeer("router1_peer1", {
///     name: "router1-peer1",
///     router: router1.name,
///     region: "us-central1",
///     peerIpAddress: "169.254.0.2",
///     peerAsn: 64515,
///     advertisedRoutePriority: 100,
///     "interface": router1Interface1.name,
/// });
/// const router1Interface2 = new gcp.compute.RouterInterface("router1_interface2", {
///     name: "router1-interface2",
///     router: router1.name,
///     region: "us-central1",
///     ipRange: "169.254.1.1/30",
///     vpnTunnel: tunnel2.name,
/// });
/// const router1Peer2 = new gcp.compute.RouterPeer("router1_peer2", {
///     name: "router1-peer2",
///     router: router1.name,
///     region: "us-central1",
///     peerIpAddress: "169.254.1.2",
///     peerAsn: 64515,
///     advertisedRoutePriority: 100,
///     "interface": router1Interface2.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="network-1",
///     routing_mode="GLOBAL",
///     auto_create_subnetworks=False)
/// ha_gateway = gcp.compute.HaVpnGateway("ha_gateway",
///     region="us-central1",
///     name="ha-vpn",
///     network=network.id)
/// external_gateway = gcp.compute.ExternalVpnGateway("external_gateway",
///     name="external-gateway",
///     redundancy_type="SINGLE_IP_INTERNALLY_REDUNDANT",
///     description="An externally managed VPN gateway",
///     interfaces=[{
///         "id": 0,
///         "ip_address": "8.8.8.8",
///     }])
/// network_subnet1 = gcp.compute.Subnetwork("network_subnet1",
///     name="ha-vpn-subnet-1",
///     ip_cidr_range="10.0.1.0/24",
///     region="us-central1",
///     network=network.id)
/// network_subnet2 = gcp.compute.Subnetwork("network_subnet2",
///     name="ha-vpn-subnet-2",
///     ip_cidr_range="10.0.2.0/24",
///     region="us-west1",
///     network=network.id)
/// router1 = gcp.compute.Router("router1",
///     name="ha-vpn-router1",
///     network=network.name,
///     bgp={
///         "asn": 64514,
///     })
/// tunnel1 = gcp.compute.VPNTunnel("tunnel1",
///     name="ha-vpn-tunnel1",
///     region="us-central1",
///     vpn_gateway=ha_gateway.id,
///     peer_external_gateway=external_gateway.id,
///     peer_external_gateway_interface=0,
///     shared_secret="a secret message",
///     router=router1.id,
///     vpn_gateway_interface=0)
/// tunnel2 = gcp.compute.VPNTunnel("tunnel2",
///     name="ha-vpn-tunnel2",
///     region="us-central1",
///     vpn_gateway=ha_gateway.id,
///     peer_external_gateway=external_gateway.id,
///     peer_external_gateway_interface=0,
///     shared_secret="a secret message",
///     router=router1.id.apply(lambda id: f" {id}"),
///     vpn_gateway_interface=1)
/// router1_interface1 = gcp.compute.RouterInterface("router1_interface1",
///     name="router1-interface1",
///     router=router1.name,
///     region="us-central1",
///     ip_range="169.254.0.1/30",
///     vpn_tunnel=tunnel1.name)
/// router1_peer1 = gcp.compute.RouterPeer("router1_peer1",
///     name="router1-peer1",
///     router=router1.name,
///     region="us-central1",
///     peer_ip_address="169.254.0.2",
///     peer_asn=64515,
///     advertised_route_priority=100,
///     interface=router1_interface1.name)
/// router1_interface2 = gcp.compute.RouterInterface("router1_interface2",
///     name="router1-interface2",
///     router=router1.name,
///     region="us-central1",
///     ip_range="169.254.1.1/30",
///     vpn_tunnel=tunnel2.name)
/// router1_peer2 = gcp.compute.RouterPeer("router1_peer2",
///     name="router1-peer2",
///     router=router1.name,
///     region="us-central1",
///     peer_ip_address="169.254.1.2",
///     peer_asn=64515,
///     advertised_route_priority=100,
///     interface=router1_interface2.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network-1",
///         RoutingMode = "GLOBAL",
///         AutoCreateSubnetworks = false,
///     });
///
///     var haGateway = new Gcp.Compute.HaVpnGateway("ha_gateway", new()
///     {
///         Region = "us-central1",
///         Name = "ha-vpn",
///         Network = network.Id,
///     });
///
///     var externalGateway = new Gcp.Compute.ExternalVpnGateway("external_gateway", new()
///     {
///         Name = "external-gateway",
///         RedundancyType = "SINGLE_IP_INTERNALLY_REDUNDANT",
///         Description = "An externally managed VPN gateway",
///         Interfaces = new[]
///         {
///             new Gcp.Compute.Inputs.ExternalVpnGatewayInterfaceArgs
///             {
///                 Id = 0,
///                 IpAddress = "8.8.8.8",
///             },
///         },
///     });
///
///     var networkSubnet1 = new Gcp.Compute.Subnetwork("network_subnet1", new()
///     {
///         Name = "ha-vpn-subnet-1",
///         IpCidrRange = "10.0.1.0/24",
///         Region = "us-central1",
///         Network = network.Id,
///     });
///
///     var networkSubnet2 = new Gcp.Compute.Subnetwork("network_subnet2", new()
///     {
///         Name = "ha-vpn-subnet-2",
///         IpCidrRange = "10.0.2.0/24",
///         Region = "us-west1",
///         Network = network.Id,
///     });
///
///     var router1 = new Gcp.Compute.Router("router1", new()
///     {
///         Name = "ha-vpn-router1",
///         Network = network.Name,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///         },
///     });
///
///     var tunnel1 = new Gcp.Compute.VPNTunnel("tunnel1", new()
///     {
///         Name = "ha-vpn-tunnel1",
///         Region = "us-central1",
///         VpnGateway = haGateway.Id,
///         PeerExternalGateway = externalGateway.Id,
///         PeerExternalGatewayInterface = 0,
///         SharedSecret = "a secret message",
///         Router = router1.Id,
///         VpnGatewayInterface = 0,
///     });
///
///     var tunnel2 = new Gcp.Compute.VPNTunnel("tunnel2", new()
///     {
///         Name = "ha-vpn-tunnel2",
///         Region = "us-central1",
///         VpnGateway = haGateway.Id,
///         PeerExternalGateway = externalGateway.Id,
///         PeerExternalGatewayInterface = 0,
///         SharedSecret = "a secret message",
///         Router = router1.Id.Apply(id => $" {id}"),
///         VpnGatewayInterface = 1,
///     });
///
///     var router1Interface1 = new Gcp.Compute.RouterInterface("router1_interface1", new()
///     {
///         Name = "router1-interface1",
///         Router = router1.Name,
///         Region = "us-central1",
///         IpRange = "169.254.0.1/30",
///         VpnTunnel = tunnel1.Name,
///     });
///
///     var router1Peer1 = new Gcp.Compute.RouterPeer("router1_peer1", new()
///     {
///         Name = "router1-peer1",
///         Router = router1.Name,
///         Region = "us-central1",
///         PeerIpAddress = "169.254.0.2",
///         PeerAsn = 64515,
///         AdvertisedRoutePriority = 100,
///         Interface = router1Interface1.Name,
///     });
///
///     var router1Interface2 = new Gcp.Compute.RouterInterface("router1_interface2", new()
///     {
///         Name = "router1-interface2",
///         Router = router1.Name,
///         Region = "us-central1",
///         IpRange = "169.254.1.1/30",
///         VpnTunnel = tunnel2.Name,
///     });
///
///     var router1Peer2 = new Gcp.Compute.RouterPeer("router1_peer2", new()
///     {
///         Name = "router1-peer2",
///         Router = router1.Name,
///         Region = "us-central1",
///         PeerIpAddress = "169.254.1.2",
///         PeerAsn = 64515,
///         AdvertisedRoutePriority = 100,
///         Interface = router1Interface2.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			RoutingMode:           pulumi.String("GLOBAL"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		haGateway, err := compute.NewHaVpnGateway(ctx, "ha_gateway", &compute.HaVpnGatewayArgs{
/// 			Region:  pulumi.String("us-central1"),
/// 			Name:    pulumi.String("ha-vpn"),
/// 			Network: network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		externalGateway, err := compute.NewExternalVpnGateway(ctx, "external_gateway", &compute.ExternalVpnGatewayArgs{
/// 			Name:           pulumi.String("external-gateway"),
/// 			RedundancyType: pulumi.String("SINGLE_IP_INTERNALLY_REDUNDANT"),
/// 			Description:    pulumi.String("An externally managed VPN gateway"),
/// 			Interfaces: compute.ExternalVpnGatewayInterfaceArray{
/// 				&compute.ExternalVpnGatewayInterfaceArgs{
/// 					Id:        pulumi.Int(0),
/// 					IpAddress: pulumi.String("8.8.8.8"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "network_subnet1", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("ha-vpn-subnet-1"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "network_subnet2", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("ha-vpn-subnet-2"),
/// 			IpCidrRange: pulumi.String("10.0.2.0/24"),
/// 			Region:      pulumi.String("us-west1"),
/// 			Network:     network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router1, err := compute.NewRouter(ctx, "router1", &compute.RouterArgs{
/// 			Name:    pulumi.String("ha-vpn-router1"),
/// 			Network: network.Name,
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(64514),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel1, err := compute.NewVPNTunnel(ctx, "tunnel1", &compute.VPNTunnelArgs{
/// 			Name:                         pulumi.String("ha-vpn-tunnel1"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			VpnGateway:                   haGateway.ID(),
/// 			PeerExternalGateway:          externalGateway.ID(),
/// 			PeerExternalGatewayInterface: pulumi.Int(0),
/// 			SharedSecret:                 pulumi.String("a secret message"),
/// 			Router:                       router1.ID(),
/// 			VpnGatewayInterface:          pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel2, err := compute.NewVPNTunnel(ctx, "tunnel2", &compute.VPNTunnelArgs{
/// 			Name:                         pulumi.String("ha-vpn-tunnel2"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			VpnGateway:                   haGateway.ID(),
/// 			PeerExternalGateway:          externalGateway.ID(),
/// 			PeerExternalGatewayInterface: pulumi.Int(0),
/// 			SharedSecret:                 pulumi.String("a secret message"),
/// 			Router: router1.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf(" %v", id), nil
/// 			}).(pulumi.StringOutput),
/// 			VpnGatewayInterface: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router1Interface1, err := compute.NewRouterInterface(ctx, "router1_interface1", &compute.RouterInterfaceArgs{
/// 			Name:      pulumi.String("router1-interface1"),
/// 			Router:    router1.Name,
/// 			Region:    pulumi.String("us-central1"),
/// 			IpRange:   pulumi.String("169.254.0.1/30"),
/// 			VpnTunnel: tunnel1.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterPeer(ctx, "router1_peer1", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("router1-peer1"),
/// 			Router:                  router1.Name,
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerIpAddress:           pulumi.String("169.254.0.2"),
/// 			PeerAsn:                 pulumi.Int(64515),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               router1Interface1.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router1Interface2, err := compute.NewRouterInterface(ctx, "router1_interface2", &compute.RouterInterfaceArgs{
/// 			Name:      pulumi.String("router1-interface2"),
/// 			Router:    router1.Name,
/// 			Region:    pulumi.String("us-central1"),
/// 			IpRange:   pulumi.String("169.254.1.1/30"),
/// 			VpnTunnel: tunnel2.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterPeer(ctx, "router1_peer2", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("router1-peer2"),
/// 			Router:                  router1.Name,
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerIpAddress:           pulumi.String("169.254.1.2"),
/// 			PeerAsn:                 pulumi.Int(64515),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               router1Interface2.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.HaVpnGateway;
/// import com.pulumi.gcp.compute.HaVpnGatewayArgs;
/// import com.pulumi.gcp.compute.ExternalVpnGateway;
/// import com.pulumi.gcp.compute.ExternalVpnGatewayArgs;
/// import com.pulumi.gcp.compute.inputs.ExternalVpnGatewayInterfaceArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.compute.RouterInterface;
/// import com.pulumi.gcp.compute.RouterInterfaceArgs;
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network-1")
///             .routingMode("GLOBAL")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var haGateway = new HaVpnGateway("haGateway", HaVpnGatewayArgs.builder()
///             .region("us-central1")
///             .name("ha-vpn")
///             .network(network.id())
///             .build());
///
///         var externalGateway = new ExternalVpnGateway("externalGateway", ExternalVpnGatewayArgs.builder()
///             .name("external-gateway")
///             .redundancyType("SINGLE_IP_INTERNALLY_REDUNDANT")
///             .description("An externally managed VPN gateway")
///             .interfaces(ExternalVpnGatewayInterfaceArgs.builder()
///                 .id(0)
///                 .ipAddress("8.8.8.8")
///                 .build())
///             .build());
///
///         var networkSubnet1 = new Subnetwork("networkSubnet1", SubnetworkArgs.builder()
///             .name("ha-vpn-subnet-1")
///             .ipCidrRange("10.0.1.0/24")
///             .region("us-central1")
///             .network(network.id())
///             .build());
///
///         var networkSubnet2 = new Subnetwork("networkSubnet2", SubnetworkArgs.builder()
///             .name("ha-vpn-subnet-2")
///             .ipCidrRange("10.0.2.0/24")
///             .region("us-west1")
///             .network(network.id())
///             .build());
///
///         var router1 = new Router("router1", RouterArgs.builder()
///             .name("ha-vpn-router1")
///             .network(network.name())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///         var tunnel1 = new VPNTunnel("tunnel1", VPNTunnelArgs.builder()
///             .name("ha-vpn-tunnel1")
///             .region("us-central1")
///             .vpnGateway(haGateway.id())
///             .peerExternalGateway(externalGateway.id())
///             .peerExternalGatewayInterface(0)
///             .sharedSecret("a secret message")
///             .router(router1.id())
///             .vpnGatewayInterface(0)
///             .build());
///
///         var tunnel2 = new VPNTunnel("tunnel2", VPNTunnelArgs.builder()
///             .name("ha-vpn-tunnel2")
///             .region("us-central1")
///             .vpnGateway(haGateway.id())
///             .peerExternalGateway(externalGateway.id())
///             .peerExternalGatewayInterface(0)
///             .sharedSecret("a secret message")
///             .router(router1.id().applyValue(_id -> String.format(" %s", _id)))
///             .vpnGatewayInterface(1)
///             .build());
///
///         var router1Interface1 = new RouterInterface("router1Interface1", RouterInterfaceArgs.builder()
///             .name("router1-interface1")
///             .router(router1.name())
///             .region("us-central1")
///             .ipRange("169.254.0.1/30")
///             .vpnTunnel(tunnel1.name())
///             .build());
///
///         var router1Peer1 = new RouterPeer("router1Peer1", RouterPeerArgs.builder()
///             .name("router1-peer1")
///             .router(router1.name())
///             .region("us-central1")
///             .peerIpAddress("169.254.0.2")
///             .peerAsn(64515)
///             .advertisedRoutePriority(100)
///             .interface_(router1Interface1.name())
///             .build());
///
///         var router1Interface2 = new RouterInterface("router1Interface2", RouterInterfaceArgs.builder()
///             .name("router1-interface2")
///             .router(router1.name())
///             .region("us-central1")
///             .ipRange("169.254.1.1/30")
///             .vpnTunnel(tunnel2.name())
///             .build());
///
///         var router1Peer2 = new RouterPeer("router1Peer2", RouterPeerArgs.builder()
///             .name("router1-peer2")
///             .router(router1.name())
///             .region("us-central1")
///             .peerIpAddress("169.254.1.2")
///             .peerAsn(64515)
///             .advertisedRoutePriority(100)
///             .interface_(router1Interface2.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   haGateway:
///     type: gcp:compute:HaVpnGateway
///     name: ha_gateway
///     properties:
///       region: us-central1
///       name: ha-vpn
///       network: ${network.id}
///   externalGateway:
///     type: gcp:compute:ExternalVpnGateway
///     name: external_gateway
///     properties:
///       name: external-gateway
///       redundancyType: SINGLE_IP_INTERNALLY_REDUNDANT
///       description: An externally managed VPN gateway
///       interfaces:
///         - id: 0
///           ipAddress: 8.8.8.8
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       routingMode: GLOBAL
///       autoCreateSubnetworks: false
///   networkSubnet1:
///     type: gcp:compute:Subnetwork
///     name: network_subnet1
///     properties:
///       name: ha-vpn-subnet-1
///       ipCidrRange: 10.0.1.0/24
///       region: us-central1
///       network: ${network.id}
///   networkSubnet2:
///     type: gcp:compute:Subnetwork
///     name: network_subnet2
///     properties:
///       name: ha-vpn-subnet-2
///       ipCidrRange: 10.0.2.0/24
///       region: us-west1
///       network: ${network.id}
///   router1:
///     type: gcp:compute:Router
///     properties:
///       name: ha-vpn-router1
///       network: ${network.name}
///       bgp:
///         asn: 64514
///   tunnel1:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: ha-vpn-tunnel1
///       region: us-central1
///       vpnGateway: ${haGateway.id}
///       peerExternalGateway: ${externalGateway.id}
///       peerExternalGatewayInterface: 0
///       sharedSecret: a secret message
///       router: ${router1.id}
///       vpnGatewayInterface: 0
///   tunnel2:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: ha-vpn-tunnel2
///       region: us-central1
///       vpnGateway: ${haGateway.id}
///       peerExternalGateway: ${externalGateway.id}
///       peerExternalGatewayInterface: 0
///       sharedSecret: a secret message
///       router: ' ${router1.id}'
///       vpnGatewayInterface: 1
///   router1Interface1:
///     type: gcp:compute:RouterInterface
///     name: router1_interface1
///     properties:
///       name: router1-interface1
///       router: ${router1.name}
///       region: us-central1
///       ipRange: 169.254.0.1/30
///       vpnTunnel: ${tunnel1.name}
///   router1Peer1:
///     type: gcp:compute:RouterPeer
///     name: router1_peer1
///     properties:
///       name: router1-peer1
///       router: ${router1.name}
///       region: us-central1
///       peerIpAddress: 169.254.0.2
///       peerAsn: 64515
///       advertisedRoutePriority: 100
///       interface: ${router1Interface1.name}
///   router1Interface2:
///     type: gcp:compute:RouterInterface
///     name: router1_interface2
///     properties:
///       name: router1-interface2
///       router: ${router1.name}
///       region: us-central1
///       ipRange: 169.254.1.1/30
///       vpnTunnel: ${tunnel2.name}
///   router1Peer2:
///     type: gcp:compute:RouterPeer
///     name: router1_peer2
///     properties:
///       name: router1-peer2
///       router: ${router1.name}
///       region: us-central1
///       peerIpAddress: 169.254.1.2
///       peerAsn: 64515
///       advertisedRoutePriority: 100
///       interface: ${router1Interface2.name}
/// ```
///
///
/// ## Import
///
/// ExternalVpnGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/externalVpnGateways/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ExternalVpnGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/externalVpnGateway:ExternalVpnGateway default projects/{{project}}/global/externalVpnGateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/externalVpnGateway:ExternalVpnGateway default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/externalVpnGateway:ExternalVpnGateway default {{name}}
/// ```
class ExternalVpnGateway extends pulumi.CustomResource {
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A list of interfaces on this external VPN gateway.
  /// Structure is documented below.
  late final pulumi.Output<List<ExternalVpnGatewayInterface>?> interfaces;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels for the external VPN gateway resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Indicates the redundancy type of this external VPN gateway
  /// Possible values are: `FOUR_IPS_REDUNDANCY`, `SINGLE_IP_INTERNALLY_REDUNDANT`, `TWO_IPS_REDUNDANCY`.
  late final pulumi.Output<String?> redundancyType;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [ExternalVpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalVpnGateway]. {@macro pulumi_compute_external_vpn_gateway_external_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalVpnGateway(
    String name, {
    ExternalVpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/externalVpnGateway:ExternalVpnGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.interfaces = registerOutput<List<ExternalVpnGatewayInterface>?>(
      'interfaces',
    );
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.redundancyType = registerOutput<String?>('redundancyType');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
