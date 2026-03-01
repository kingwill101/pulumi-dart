import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpntunnel_args.dart';
import 'vpntunnel_cipher_suite.dart';

/// VPN tunnel resource.
///
///
/// To get more information about VpnTunnel, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels)
/// * How-to Guides
/// * [Cloud VPN Overview](https://cloud.google.com/vpn/docs/concepts/overview)
/// * [Networks and Tunnel Routing](https://cloud.google.com/vpn/docs/concepts/choosing-networks-routing)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `shared_secret_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Vpn Tunnel Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {name: "network-1"});
/// const targetGateway = new gcp.compute.VPNGateway("target_gateway", {
///     name: "vpn-1",
///     network: network1.id,
/// });
/// const vpnStaticIp = new gcp.compute.Address("vpn_static_ip", {name: "vpn-static-ip"});
/// const frEsp = new gcp.compute.ForwardingRule("fr_esp", {
///     name: "fr-esp",
///     ipProtocol: "ESP",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp500 = new gcp.compute.ForwardingRule("fr_udp500", {
///     name: "fr-udp500",
///     ipProtocol: "UDP",
///     portRange: "500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp4500 = new gcp.compute.ForwardingRule("fr_udp4500", {
///     name: "fr-udp4500",
///     ipProtocol: "UDP",
///     portRange: "4500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const tunnel1 = new gcp.compute.VPNTunnel("tunnel1", {
///     name: "tunnel-1",
///     peerIp: "15.0.0.120",
///     sharedSecret: "a secret message",
///     targetVpnGateway: targetGateway.id,
///     labels: {
///         foo: "bar",
///     },
/// }, {
///     dependsOn: [
///         frEsp,
///         frUdp500,
///         frUdp4500,
///     ],
/// });
/// const route1 = new gcp.compute.Route("route1", {
///     name: "route1",
///     network: network1.name,
///     destRange: "15.0.0.0/24",
///     priority: 1000,
///     nextHopVpnTunnel: tunnel1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1", name="network-1")
/// target_gateway = gcp.compute.VPNGateway("target_gateway",
///     name="vpn-1",
///     network=network1.id)
/// vpn_static_ip = gcp.compute.Address("vpn_static_ip", name="vpn-static-ip")
/// fr_esp = gcp.compute.ForwardingRule("fr_esp",
///     name="fr-esp",
///     ip_protocol="ESP",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp500 = gcp.compute.ForwardingRule("fr_udp500",
///     name="fr-udp500",
///     ip_protocol="UDP",
///     port_range="500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp4500 = gcp.compute.ForwardingRule("fr_udp4500",
///     name="fr-udp4500",
///     ip_protocol="UDP",
///     port_range="4500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// tunnel1 = gcp.compute.VPNTunnel("tunnel1",
///     name="tunnel-1",
///     peer_ip="15.0.0.120",
///     shared_secret="a secret message",
///     target_vpn_gateway=target_gateway.id,
///     labels={
///         "foo": "bar",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             fr_esp,
///             fr_udp500,
///             fr_udp4500,
///         ]))
/// route1 = gcp.compute.Route("route1",
///     name="route1",
///     network=network1.name,
///     dest_range="15.0.0.0/24",
///     priority=1000,
///     next_hop_vpn_tunnel=tunnel1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new Gcp.Compute.Network("network1", new()
///     {
///         Name = "network-1",
///     });
///
///     var targetGateway = new Gcp.Compute.VPNGateway("target_gateway", new()
///     {
///         Name = "vpn-1",
///         Network = network1.Id,
///     });
///
///     var vpnStaticIp = new Gcp.Compute.Address("vpn_static_ip", new()
///     {
///         Name = "vpn-static-ip",
///     });
///
///     var frEsp = new Gcp.Compute.ForwardingRule("fr_esp", new()
///     {
///         Name = "fr-esp",
///         IpProtocol = "ESP",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp500 = new Gcp.Compute.ForwardingRule("fr_udp500", new()
///     {
///         Name = "fr-udp500",
///         IpProtocol = "UDP",
///         PortRange = "500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp4500 = new Gcp.Compute.ForwardingRule("fr_udp4500", new()
///     {
///         Name = "fr-udp4500",
///         IpProtocol = "UDP",
///         PortRange = "4500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var tunnel1 = new Gcp.Compute.VPNTunnel("tunnel1", new()
///     {
///         Name = "tunnel-1",
///         PeerIp = "15.0.0.120",
///         SharedSecret = "a secret message",
///         TargetVpnGateway = targetGateway.Id,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             frEsp,
///             frUdp500,
///             frUdp4500,
///         },
///     });
///
///     var route1 = new Gcp.Compute.Route("route1", new()
///     {
///         Name = "route1",
///         Network = network1.Name,
///         DestRange = "15.0.0.0/24",
///         Priority = 1000,
///         NextHopVpnTunnel = tunnel1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// 			Name: pulumi.String("network-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetGateway, err := compute.NewVPNGateway(ctx, "target_gateway", &compute.VPNGatewayArgs{
/// 			Name:    pulumi.String("vpn-1"),
/// 			Network: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnStaticIp, err := compute.NewAddress(ctx, "vpn_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("vpn-static-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frEsp, err := compute.NewForwardingRule(ctx, "fr_esp", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-esp"),
/// 			IpProtocol: pulumi.String("ESP"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp500, err := compute.NewForwardingRule(ctx, "fr_udp500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp4500, err := compute.NewForwardingRule(ctx, "fr_udp4500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp4500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("4500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel1, err := compute.NewVPNTunnel(ctx, "tunnel1", &compute.VPNTunnelArgs{
/// 			Name:             pulumi.String("tunnel-1"),
/// 			PeerIp:           pulumi.String("15.0.0.120"),
/// 			SharedSecret:     pulumi.String("a secret message"),
/// 			TargetVpnGateway: targetGateway.ID(),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			frEsp,
/// 			frUdp500,
/// 			frUdp4500,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route1", &compute.RouteArgs{
/// 			Name:             pulumi.String("route1"),
/// 			Network:          network1.Name,
/// 			DestRange:        pulumi.String("15.0.0.0/24"),
/// 			Priority:         pulumi.Int(1000),
/// 			NextHopVpnTunnel: tunnel1.ID(),
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
/// import com.pulumi.gcp.compute.VPNGateway;
/// import com.pulumi.gcp.compute.VPNGatewayArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network-1")
///             .build());
///
///         var targetGateway = new VPNGateway("targetGateway", VPNGatewayArgs.builder()
///             .name("vpn-1")
///             .network(network1.id())
///             .build());
///
///         var vpnStaticIp = new Address("vpnStaticIp", AddressArgs.builder()
///             .name("vpn-static-ip")
///             .build());
///
///         var frEsp = new ForwardingRule("frEsp", ForwardingRuleArgs.builder()
///             .name("fr-esp")
///             .ipProtocol("ESP")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp500 = new ForwardingRule("frUdp500", ForwardingRuleArgs.builder()
///             .name("fr-udp500")
///             .ipProtocol("UDP")
///             .portRange("500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp4500 = new ForwardingRule("frUdp4500", ForwardingRuleArgs.builder()
///             .name("fr-udp4500")
///             .ipProtocol("UDP")
///             .portRange("4500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var tunnel1 = new VPNTunnel("tunnel1", VPNTunnelArgs.builder()
///             .name("tunnel-1")
///             .peerIp("15.0.0.120")
///             .sharedSecret("a secret message")
///             .targetVpnGateway(targetGateway.id())
///             .labels(Map.of("foo", "bar"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     frEsp,
///                     frUdp500,
///                     frUdp4500)
///                 .build());
///
///         var route1 = new Route("route1", RouteArgs.builder()
///             .name("route1")
///             .network(network1.name())
///             .destRange("15.0.0.0/24")
///             .priority(1000)
///             .nextHopVpnTunnel(tunnel1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tunnel1:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: tunnel-1
///       peerIp: 15.0.0.120
///       sharedSecret: a secret message
///       targetVpnGateway: ${targetGateway.id}
///       labels:
///         foo: bar
///     options:
///       dependsOn:
///         - ${frEsp}
///         - ${frUdp500}
///         - ${frUdp4500}
///   targetGateway:
///     type: gcp:compute:VPNGateway
///     name: target_gateway
///     properties:
///       name: vpn-1
///       network: ${network1.id}
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///   vpnStaticIp:
///     type: gcp:compute:Address
///     name: vpn_static_ip
///     properties:
///       name: vpn-static-ip
///   frEsp:
///     type: gcp:compute:ForwardingRule
///     name: fr_esp
///     properties:
///       name: fr-esp
///       ipProtocol: ESP
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp500
///     properties:
///       name: fr-udp500
///       ipProtocol: UDP
///       portRange: '500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp4500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp4500
///     properties:
///       name: fr-udp4500
///       ipProtocol: UDP
///       portRange: '4500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   route1:
///     type: gcp:compute:Route
///     properties:
///       name: route1
///       network: ${network1.name}
///       destRange: 15.0.0.0/24
///       priority: 1000
///       nextHopVpnTunnel: ${tunnel1.id}
/// ```
///
/// ### Vpn Tunnel Cipher Suite
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {name: "network-1"});
/// const targetGateway = new gcp.compute.VPNGateway("target_gateway", {
///     name: "vpn-1",
///     network: network1.id,
/// });
/// const vpnStaticIp = new gcp.compute.Address("vpn_static_ip", {name: "vpn-static-ip"});
/// const frEsp = new gcp.compute.ForwardingRule("fr_esp", {
///     name: "fr-esp",
///     ipProtocol: "ESP",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp500 = new gcp.compute.ForwardingRule("fr_udp500", {
///     name: "fr-udp500",
///     ipProtocol: "UDP",
///     portRange: "500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp4500 = new gcp.compute.ForwardingRule("fr_udp4500", {
///     name: "fr-udp4500",
///     ipProtocol: "UDP",
///     portRange: "4500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const tunnel1 = new gcp.compute.VPNTunnel("tunnel1", {
///     name: "tunnel-cipher",
///     peerIp: "15.0.0.120",
///     sharedSecret: "a secret message",
///     targetVpnGateway: targetGateway.id,
///     cipherSuite: {
///         phase1: {
///             encryptions: ["AES-CBC-256"],
///             integrities: ["HMAC-SHA2-256-128"],
///             prves: ["PRF-HMAC-SHA2-256"],
///             dhs: ["Group-14"],
///         },
///         phase2: {
///             encryptions: ["AES-CBC-128"],
///             integrities: ["HMAC-SHA2-256-128"],
///             pfs: ["Group-14"],
///         },
///     },
///     labels: {
///         foo: "bar",
///     },
/// }, {
///     dependsOn: [
///         frEsp,
///         frUdp500,
///         frUdp4500,
///     ],
/// });
/// const route1 = new gcp.compute.Route("route1", {
///     name: "route1",
///     network: network1.name,
///     destRange: "15.0.0.0/24",
///     priority: 1000,
///     nextHopVpnTunnel: tunnel1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1", name="network-1")
/// target_gateway = gcp.compute.VPNGateway("target_gateway",
///     name="vpn-1",
///     network=network1.id)
/// vpn_static_ip = gcp.compute.Address("vpn_static_ip", name="vpn-static-ip")
/// fr_esp = gcp.compute.ForwardingRule("fr_esp",
///     name="fr-esp",
///     ip_protocol="ESP",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp500 = gcp.compute.ForwardingRule("fr_udp500",
///     name="fr-udp500",
///     ip_protocol="UDP",
///     port_range="500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp4500 = gcp.compute.ForwardingRule("fr_udp4500",
///     name="fr-udp4500",
///     ip_protocol="UDP",
///     port_range="4500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// tunnel1 = gcp.compute.VPNTunnel("tunnel1",
///     name="tunnel-cipher",
///     peer_ip="15.0.0.120",
///     shared_secret="a secret message",
///     target_vpn_gateway=target_gateway.id,
///     cipher_suite={
///         "phase1": {
///             "encryptions": ["AES-CBC-256"],
///             "integrities": ["HMAC-SHA2-256-128"],
///             "prves": ["PRF-HMAC-SHA2-256"],
///             "dhs": ["Group-14"],
///         },
///         "phase2": {
///             "encryptions": ["AES-CBC-128"],
///             "integrities": ["HMAC-SHA2-256-128"],
///             "pfs": ["Group-14"],
///         },
///     },
///     labels={
///         "foo": "bar",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             fr_esp,
///             fr_udp500,
///             fr_udp4500,
///         ]))
/// route1 = gcp.compute.Route("route1",
///     name="route1",
///     network=network1.name,
///     dest_range="15.0.0.0/24",
///     priority=1000,
///     next_hop_vpn_tunnel=tunnel1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new Gcp.Compute.Network("network1", new()
///     {
///         Name = "network-1",
///     });
///
///     var targetGateway = new Gcp.Compute.VPNGateway("target_gateway", new()
///     {
///         Name = "vpn-1",
///         Network = network1.Id,
///     });
///
///     var vpnStaticIp = new Gcp.Compute.Address("vpn_static_ip", new()
///     {
///         Name = "vpn-static-ip",
///     });
///
///     var frEsp = new Gcp.Compute.ForwardingRule("fr_esp", new()
///     {
///         Name = "fr-esp",
///         IpProtocol = "ESP",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp500 = new Gcp.Compute.ForwardingRule("fr_udp500", new()
///     {
///         Name = "fr-udp500",
///         IpProtocol = "UDP",
///         PortRange = "500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp4500 = new Gcp.Compute.ForwardingRule("fr_udp4500", new()
///     {
///         Name = "fr-udp4500",
///         IpProtocol = "UDP",
///         PortRange = "4500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var tunnel1 = new Gcp.Compute.VPNTunnel("tunnel1", new()
///     {
///         Name = "tunnel-cipher",
///         PeerIp = "15.0.0.120",
///         SharedSecret = "a secret message",
///         TargetVpnGateway = targetGateway.Id,
///         CipherSuite = new Gcp.Compute.Inputs.VPNTunnelCipherSuiteArgs
///         {
///             Phase1 = new Gcp.Compute.Inputs.VPNTunnelCipherSuitePhase1Args
///             {
///                 Encryptions = new[]
///                 {
///                     "AES-CBC-256",
///                 },
///                 Integrities = new[]
///                 {
///                     "HMAC-SHA2-256-128",
///                 },
///                 Prves = new[]
///                 {
///                     "PRF-HMAC-SHA2-256",
///                 },
///                 Dhs = new[]
///                 {
///                     "Group-14",
///                 },
///             },
///             Phase2 = new Gcp.Compute.Inputs.VPNTunnelCipherSuitePhase2Args
///             {
///                 Encryptions = new[]
///                 {
///                     "AES-CBC-128",
///                 },
///                 Integrities = new[]
///                 {
///                     "HMAC-SHA2-256-128",
///                 },
///                 Pfs = new[]
///                 {
///                     "Group-14",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             frEsp,
///             frUdp500,
///             frUdp4500,
///         },
///     });
///
///     var route1 = new Gcp.Compute.Route("route1", new()
///     {
///         Name = "route1",
///         Network = network1.Name,
///         DestRange = "15.0.0.0/24",
///         Priority = 1000,
///         NextHopVpnTunnel = tunnel1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// 			Name: pulumi.String("network-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetGateway, err := compute.NewVPNGateway(ctx, "target_gateway", &compute.VPNGatewayArgs{
/// 			Name:    pulumi.String("vpn-1"),
/// 			Network: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnStaticIp, err := compute.NewAddress(ctx, "vpn_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("vpn-static-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frEsp, err := compute.NewForwardingRule(ctx, "fr_esp", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-esp"),
/// 			IpProtocol: pulumi.String("ESP"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp500, err := compute.NewForwardingRule(ctx, "fr_udp500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp4500, err := compute.NewForwardingRule(ctx, "fr_udp4500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp4500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("4500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel1, err := compute.NewVPNTunnel(ctx, "tunnel1", &compute.VPNTunnelArgs{
/// 			Name:             pulumi.String("tunnel-cipher"),
/// 			PeerIp:           pulumi.String("15.0.0.120"),
/// 			SharedSecret:     pulumi.String("a secret message"),
/// 			TargetVpnGateway: targetGateway.ID(),
/// 			CipherSuite: &compute.VPNTunnelCipherSuiteArgs{
/// 				Phase1: &compute.VPNTunnelCipherSuitePhase1Args{
/// 					Encryptions: pulumi.StringArray{
/// 						pulumi.String("AES-CBC-256"),
/// 					},
/// 					Integrities: pulumi.StringArray{
/// 						pulumi.String("HMAC-SHA2-256-128"),
/// 					},
/// 					Prves: pulumi.StringArray{
/// 						pulumi.String("PRF-HMAC-SHA2-256"),
/// 					},
/// 					Dhs: pulumi.StringArray{
/// 						pulumi.String("Group-14"),
/// 					},
/// 				},
/// 				Phase2: &compute.VPNTunnelCipherSuitePhase2Args{
/// 					Encryptions: pulumi.StringArray{
/// 						pulumi.String("AES-CBC-128"),
/// 					},
/// 					Integrities: pulumi.StringArray{
/// 						pulumi.String("HMAC-SHA2-256-128"),
/// 					},
/// 					Pfs: pulumi.StringArray{
/// 						pulumi.String("Group-14"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			frEsp,
/// 			frUdp500,
/// 			frUdp4500,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route1", &compute.RouteArgs{
/// 			Name:             pulumi.String("route1"),
/// 			Network:          network1.Name,
/// 			DestRange:        pulumi.String("15.0.0.0/24"),
/// 			Priority:         pulumi.Int(1000),
/// 			NextHopVpnTunnel: tunnel1.ID(),
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
/// import com.pulumi.gcp.compute.VPNGateway;
/// import com.pulumi.gcp.compute.VPNGatewayArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.compute.inputs.VPNTunnelCipherSuiteArgs;
/// import com.pulumi.gcp.compute.inputs.VPNTunnelCipherSuitePhase1Args;
/// import com.pulumi.gcp.compute.inputs.VPNTunnelCipherSuitePhase2Args;
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network-1")
///             .build());
///
///         var targetGateway = new VPNGateway("targetGateway", VPNGatewayArgs.builder()
///             .name("vpn-1")
///             .network(network1.id())
///             .build());
///
///         var vpnStaticIp = new Address("vpnStaticIp", AddressArgs.builder()
///             .name("vpn-static-ip")
///             .build());
///
///         var frEsp = new ForwardingRule("frEsp", ForwardingRuleArgs.builder()
///             .name("fr-esp")
///             .ipProtocol("ESP")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp500 = new ForwardingRule("frUdp500", ForwardingRuleArgs.builder()
///             .name("fr-udp500")
///             .ipProtocol("UDP")
///             .portRange("500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp4500 = new ForwardingRule("frUdp4500", ForwardingRuleArgs.builder()
///             .name("fr-udp4500")
///             .ipProtocol("UDP")
///             .portRange("4500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var tunnel1 = new VPNTunnel("tunnel1", VPNTunnelArgs.builder()
///             .name("tunnel-cipher")
///             .peerIp("15.0.0.120")
///             .sharedSecret("a secret message")
///             .targetVpnGateway(targetGateway.id())
///             .cipherSuite(VPNTunnelCipherSuiteArgs.builder()
///                 .phase1(VPNTunnelCipherSuitePhase1Args.builder()
///                     .encryptions("AES-CBC-256")
///                     .integrities("HMAC-SHA2-256-128")
///                     .prves("PRF-HMAC-SHA2-256")
///                     .dhs("Group-14")
///                     .build())
///                 .phase2(VPNTunnelCipherSuitePhase2Args.builder()
///                     .encryptions("AES-CBC-128")
///                     .integrities("HMAC-SHA2-256-128")
///                     .pfs("Group-14")
///                     .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     frEsp,
///                     frUdp500,
///                     frUdp4500)
///                 .build());
///
///         var route1 = new Route("route1", RouteArgs.builder()
///             .name("route1")
///             .network(network1.name())
///             .destRange("15.0.0.0/24")
///             .priority(1000)
///             .nextHopVpnTunnel(tunnel1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tunnel1:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: tunnel-cipher
///       peerIp: 15.0.0.120
///       sharedSecret: a secret message
///       targetVpnGateway: ${targetGateway.id}
///       cipherSuite:
///         phase1:
///           encryptions:
///             - AES-CBC-256
///           integrities:
///             - HMAC-SHA2-256-128
///           prves:
///             - PRF-HMAC-SHA2-256
///           dhs:
///             - Group-14
///         phase2:
///           encryptions:
///             - AES-CBC-128
///           integrities:
///             - HMAC-SHA2-256-128
///           pfs:
///             - Group-14
///       labels:
///         foo: bar
///     options:
///       dependsOn:
///         - ${frEsp}
///         - ${frUdp500}
///         - ${frUdp4500}
///   targetGateway:
///     type: gcp:compute:VPNGateway
///     name: target_gateway
///     properties:
///       name: vpn-1
///       network: ${network1.id}
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///   vpnStaticIp:
///     type: gcp:compute:Address
///     name: vpn_static_ip
///     properties:
///       name: vpn-static-ip
///   frEsp:
///     type: gcp:compute:ForwardingRule
///     name: fr_esp
///     properties:
///       name: fr-esp
///       ipProtocol: ESP
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp500
///     properties:
///       name: fr-udp500
///       ipProtocol: UDP
///       portRange: '500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp4500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp4500
///     properties:
///       name: fr-udp4500
///       ipProtocol: UDP
///       portRange: '4500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   route1:
///     type: gcp:compute:Route
///     properties:
///       name: route1
///       network: ${network1.name}
///       destRange: 15.0.0.0/24
///       priority: 1000
///       nextHopVpnTunnel: ${tunnel1.id}
/// ```
///
///
/// ## Import
///
/// VpnTunnel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/vpnTunnels/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, VpnTunnel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default projects/{{project}}/regions/{{region}}/vpnTunnels/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default {{name}}
/// ```
class VPNTunnel extends pulumi.CustomResource {
  /// User specified list of ciphers to use for the phase 1 and phase 2 of the IKE protocol.
  /// Structure is documented below.
  late final pulumi.Output<VPNTunnelCipherSuite?> cipherSuite;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Detailed status message for the VPN tunnel.
  late final pulumi.Output<String> detailedStatus;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// IKE protocol version to use when establishing the VPN tunnel with
  /// peer VPN gateway.
  /// Acceptable IKE versions are 1 or 2. Default version is 2.
  late final pulumi.Output<int?> ikeVersion;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this VpnTunnel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Local traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  late final pulumi.Output<List<String>> localTrafficSelectors;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63
  /// characters long and match the regular expression
  /// `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
  late final pulumi.Output<String?> peerExternalGateway;

  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
  late final pulumi.Output<int?> peerExternalGatewayInterface;

  /// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
  /// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
  /// ID in the peer GCP VPN gateway.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  late final pulumi.Output<String?> peerGcpGateway;

  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  late final pulumi.Output<String> peerIp;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region where the tunnel is located. If unset, is set to the region of `target_vpn_gateway`.
  late final pulumi.Output<String> region;

  /// Remote traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  late final pulumi.Output<List<String>> remoteTrafficSelectors;

  /// URL of router resource to be used for dynamic routing.
  late final pulumi.Output<String?> router;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> sharedSecret;

  /// Hash of the shared secret.
  late final pulumi.Output<String> sharedSecretHash;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `shared_secret` or `shared_secret_wo` can only be set.
  late final pulumi.Output<String?> sharedSecretWo;

  /// Triggers update of `shared_secret_wo` write-only. Increment this value when an update to `shared_secret_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<String?> sharedSecretWoVersion;

  /// URL of the Target VPN gateway with which this VPN tunnel is
  /// associated.
  late final pulumi.Output<String?> targetVpnGateway;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> tunnelId;

  /// URL of the VPN gateway with which this VPN tunnel is associated.
  /// This must be used if a High Availability VPN gateway resource is created.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  late final pulumi.Output<String?> vpnGateway;

  /// The interface ID of the VPN gateway with which this VPN tunnel is associated.
  late final pulumi.Output<int?> vpnGatewayInterface;

  /// Creates a new [VPNTunnel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VPNTunnel]. {@macro pulumi_compute_v_pntunnel_vpntunnel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VPNTunnel(
    String name, {
    VPNTunnelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/vPNTunnel:VPNTunnel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.cipherSuite = registerOutput<VPNTunnelCipherSuite?>('cipherSuite');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.detailedStatus = registerOutput<String>('detailedStatus');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.ikeVersion = registerOutput<int?>('ikeVersion');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.localTrafficSelectors = registerOutput<List<String>>(
      'localTrafficSelectors',
    );
    this.name = registerOutput<String>('name');
    this.peerExternalGateway = registerOutput<String?>('peerExternalGateway');
    this.peerExternalGatewayInterface = registerOutput<int?>(
      'peerExternalGatewayInterface',
    );
    this.peerGcpGateway = registerOutput<String?>('peerGcpGateway');
    this.peerIp = registerOutput<String>('peerIp');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.remoteTrafficSelectors = registerOutput<List<String>>(
      'remoteTrafficSelectors',
    );
    this.router = registerOutput<String?>('router');
    this.selfLink = registerOutput<String>('selfLink');
    this.sharedSecret = registerOutput<String?>('sharedSecret');
    this.sharedSecretHash = registerOutput<String>('sharedSecretHash');
    this.sharedSecretWo = registerOutput<String?>('sharedSecretWo');
    this.sharedSecretWoVersion = registerOutput<String?>(
      'sharedSecretWoVersion',
    );
    this.targetVpnGateway = registerOutput<String?>('targetVpnGateway');
    this.tunnelId = registerOutput<String>('tunnelId');
    this.vpnGateway = registerOutput<String?>('vpnGateway');
    this.vpnGatewayInterface = registerOutput<int?>('vpnGatewayInterface');
  }
}
