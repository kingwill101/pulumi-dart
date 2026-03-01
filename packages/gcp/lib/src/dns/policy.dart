import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config.dart';
import 'policy_args.dart';
import 'policy_dns64_config.dart';
import 'policy_network.dart';

/// A policy is a collection of DNS rules applied to one or more Virtual
/// Private Cloud resources.
///
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/reference/v1beta2/policies)
/// * How-to Guides
/// * [Using DNS server policies](https://cloud.google.com/dns/zones/#using-dns-server-policies)
///
/// ## Example Usage
///
/// ### Dns Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_1 = new gcp.compute.Network("network-1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const network_2 = new gcp.compute.Network("network-2", {
///     name: "network-2",
///     autoCreateSubnetworks: false,
/// });
/// const example_policy = new gcp.dns.Policy("example-policy", {
///     name: "example-policy",
///     enableInboundForwarding: true,
///     enableLogging: true,
///     alternativeNameServerConfig: {
///         targetNameServers: [
///             {
///                 ipv4Address: "172.16.1.10",
///                 forwardingPath: "private",
///             },
///             {
///                 ipv4Address: "172.16.1.20",
///             },
///         ],
///     },
///     networks: [
///         {
///             networkUrl: network_1.id,
///         },
///         {
///             networkUrl: network_2.id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_1 = gcp.compute.Network("network-1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// network_2 = gcp.compute.Network("network-2",
///     name="network-2",
///     auto_create_subnetworks=False)
/// example_policy = gcp.dns.Policy("example-policy",
///     name="example-policy",
///     enable_inbound_forwarding=True,
///     enable_logging=True,
///     alternative_name_server_config={
///         "target_name_servers": [
///             {
///                 "ipv4_address": "172.16.1.10",
///                 "forwarding_path": "private",
///             },
///             {
///                 "ipv4_address": "172.16.1.20",
///             },
///         ],
///     },
///     networks=[
///         {
///             "network_url": network_1.id,
///         },
///         {
///             "network_url": network_2.id,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network_1 = new Gcp.Compute.Network("network-1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_2 = new Gcp.Compute.Network("network-2", new()
///     {
///         Name = "network-2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var example_policy = new Gcp.Dns.Policy("example-policy", new()
///     {
///         Name = "example-policy",
///         EnableInboundForwarding = true,
///         EnableLogging = true,
///         AlternativeNameServerConfig = new Gcp.Dns.Inputs.PolicyAlternativeNameServerConfigArgs
///         {
///             TargetNameServers = new[]
///             {
///                 new Gcp.Dns.Inputs.PolicyAlternativeNameServerConfigTargetNameServerArgs
///                 {
///                     Ipv4Address = "172.16.1.10",
///                     ForwardingPath = "private",
///                 },
///                 new Gcp.Dns.Inputs.PolicyAlternativeNameServerConfigTargetNameServerArgs
///                 {
///                     Ipv4Address = "172.16.1.20",
///                 },
///             },
///         },
///         Networks = new[]
///         {
///             new Gcp.Dns.Inputs.PolicyNetworkArgs
///             {
///                 NetworkUrl = network_1.Id,
///             },
///             new Gcp.Dns.Inputs.PolicyNetworkArgs
///             {
///                 NetworkUrl = network_2.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_1, err := compute.NewNetwork(ctx, "network-1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_2, err := compute.NewNetwork(ctx, "network-2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewPolicy(ctx, "example-policy", &dns.PolicyArgs{
/// 			Name:                    pulumi.String("example-policy"),
/// 			EnableInboundForwarding: pulumi.Bool(true),
/// 			EnableLogging:           pulumi.Bool(true),
/// 			AlternativeNameServerConfig: &dns.PolicyAlternativeNameServerConfigArgs{
/// 				TargetNameServers: dns.PolicyAlternativeNameServerConfigTargetNameServerArray{
/// 					&dns.PolicyAlternativeNameServerConfigTargetNameServerArgs{
/// 						Ipv4Address:    pulumi.String("172.16.1.10"),
/// 						ForwardingPath: pulumi.String("private"),
/// 					},
/// 					&dns.PolicyAlternativeNameServerConfigTargetNameServerArgs{
/// 						Ipv4Address: pulumi.String("172.16.1.20"),
/// 					},
/// 				},
/// 			},
/// 			Networks: dns.PolicyNetworkArray{
/// 				&dns.PolicyNetworkArgs{
/// 					NetworkUrl: network_1.ID(),
/// 				},
/// 				&dns.PolicyNetworkArgs{
/// 					NetworkUrl: network_2.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.dns.Policy;
/// import com.pulumi.gcp.dns.PolicyArgs;
/// import com.pulumi.gcp.dns.inputs.PolicyAlternativeNameServerConfigArgs;
/// import com.pulumi.gcp.dns.inputs.PolicyNetworkArgs;
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
///         var network_1 = new Network("network-1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_2 = new Network("network-2", NetworkArgs.builder()
///             .name("network-2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var example_policy = new Policy("example-policy", PolicyArgs.builder()
///             .name("example-policy")
///             .enableInboundForwarding(true)
///             .enableLogging(true)
///             .alternativeNameServerConfig(PolicyAlternativeNameServerConfigArgs.builder()
///                 .targetNameServers(
///                     PolicyAlternativeNameServerConfigTargetNameServerArgs.builder()
///                         .ipv4Address("172.16.1.10")
///                         .forwardingPath("private")
///                         .build(),
///                     PolicyAlternativeNameServerConfigTargetNameServerArgs.builder()
///                         .ipv4Address("172.16.1.20")
///                         .build())
///                 .build())
///             .networks(
///                 PolicyNetworkArgs.builder()
///                     .networkUrl(network_1.id())
///                     .build(),
///                 PolicyNetworkArgs.builder()
///                     .networkUrl(network_2.id())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-policy:
///     type: gcp:dns:Policy
///     properties:
///       name: example-policy
///       enableInboundForwarding: true
///       enableLogging: true
///       alternativeNameServerConfig:
///         targetNameServers:
///           - ipv4Address: 172.16.1.10
///             forwardingPath: private
///           - ipv4Address: 172.16.1.20
///       networks:
///         - networkUrl: ${["network-1"].id}
///         - networkUrl: ${["network-2"].id}
///   network-1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
///   network-2:
///     type: gcp:compute:Network
///     properties:
///       name: network-2
///       autoCreateSubnetworks: false
/// ```
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/policies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/policy:Policy default projects/{{project}}/policies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/policy:Policy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/policy:Policy default {{name}}
/// ```
class Policy extends pulumi.CustomResource {
  /// Sets an alternative name server for the associated networks.
  /// When specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server is specified.
  /// Structure is documented below.
  late final pulumi.Output<PolicyAlternativeNameServerConfig?> alternativeNameServerConfig;
  /// A textual description field. Defaults to 'Managed by Pulumi'.
  late final pulumi.Output<String?> description;
  /// Configurations related to DNS64 for this Policy.
  /// Structure is documented below.
  late final pulumi.Output<PolicyDns64Config> dns64Config;
  /// Allows networks bound to this policy to receive DNS queries sent
  /// by VMs or applications over VPN connections. When enabled, a
  /// virtual IP address will be allocated from each of the sub-networks
  /// that are bound to this policy.
  late final pulumi.Output<bool?> enableInboundForwarding;
  /// Controls whether logging is enabled for the networks bound to this policy.
  /// Defaults to no logging if not set.
  late final pulumi.Output<bool?> enableLogging;
  /// User assigned name for this policy.
  late final pulumi.Output<String> name;
  /// List of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  late final pulumi.Output<List<PolicyNetwork>?> networks;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_dns_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alternativeNameServerConfig = registerOutput<PolicyAlternativeNameServerConfig?>('alternativeNameServerConfig');
    this.description = registerOutput<String?>('description');
    this.dns64Config = registerOutput<PolicyDns64Config>('dns64Config');
    this.enableInboundForwarding = registerOutput<bool?>('enableInboundForwarding');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<PolicyNetwork>?>('networks');
    this.project = registerOutput<String>('project');
  }
}
