import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_allow.dart';
import 'firewall_args.dart';
import 'firewall_deny.dart';
import 'firewall_log_config.dart';
import 'firewall_params.dart';

/// Each network has its own firewall controlling access to and from the
/// instances.
///
/// All traffic to instances, even from other instances, is blocked by the
/// firewall unless firewall rules are created to allow it.
///
/// The default network has automatically created firewall rules that are
/// shown in default firewall rules. No manually created network has
/// automatically created firewall rules except for a default "allow" rule for
/// outgoing traffic and a default "deny" for incoming traffic. For all
/// networks except the default network, you must create any firewall rules
/// you need.
///
///
/// To get more information about Firewall, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/firewalls)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/firewalls)
///
/// ## Example Usage
///
/// ### Firewall Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "test-network"});
/// const _default = new gcp.compute.Firewall("default", {
///     name: "test-firewall",
///     network: defaultNetwork.name,
///     allows: [
///         {
///             protocol: "icmp",
///         },
///         {
///             protocol: "tcp",
///             ports: [
///                 "80",
///                 "8080",
///                 "1000-2000",
///             ],
///         },
///     ],
///     sourceTags: ["web"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="test-network")
/// default = gcp.compute.Firewall("default",
///     name="test-firewall",
///     network=default_network.name,
///     allows=[
///         {
///             "protocol": "icmp",
///         },
///         {
///             "protocol": "tcp",
///             "ports": [
///                 "80",
///                 "8080",
///                 "1000-2000",
///             ],
///         },
///     ],
///     source_tags=["web"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "test-network",
///     });
///
///     var @default = new Gcp.Compute.Firewall("default", new()
///     {
///         Name = "test-firewall",
///         Network = defaultNetwork.Name,
///         Allows = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "icmp",
///             },
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "tcp",
///                 Ports = new[]
///                 {
///                     "80",
///                     "8080",
///                     "1000-2000",
///                 },
///             },
///         },
///         SourceTags = new[]
///         {
///             "web",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewall(ctx, "default", &compute.FirewallArgs{
/// 			Name:    pulumi.String("test-firewall"),
/// 			Network: defaultNetwork.Name,
/// 			Allows: compute.FirewallAllowArray{
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("icmp"),
/// 				},
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("80"),
/// 						pulumi.String("8080"),
/// 						pulumi.String("1000-2000"),
/// 					},
/// 				},
/// 			},
/// 			SourceTags: pulumi.StringArray{
/// 				pulumi.String("web"),
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
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("test-network")
///             .build());
///
///         var default_ = new Firewall("default", FirewallArgs.builder()
///             .name("test-firewall")
///             .network(defaultNetwork.name())
///             .allows(
///                 FirewallAllowArgs.builder()
///                     .protocol("icmp")
///                     .build(),
///                 FirewallAllowArgs.builder()
///                     .protocol("tcp")
///                     .ports(
///                         "80",
///                         "8080",
///                         "1000-2000")
///                     .build())
///             .sourceTags("web")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Firewall
///     properties:
///       name: test-firewall
///       network: ${defaultNetwork.name}
///       allows:
///         - protocol: icmp
///         - protocol: tcp
///           ports:
///             - '80'
///             - '8080'
///             - 1000-2000
///       sourceTags:
///         - web
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: test-network
/// ```
///
/// ### Firewall With Target Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const rules = new gcp.compute.Firewall("rules", {
///     project: "my-project-name",
///     name: "my-firewall-rule",
///     network: "default",
///     description: "Creates firewall rule targeting tagged instances",
///     allows: [{
///         protocol: "tcp",
///         ports: [
///             "80",
///             "8080",
///             "1000-2000",
///         ],
///     }],
///     sourceTags: ["foo"],
///     targetTags: ["web"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// rules = gcp.compute.Firewall("rules",
///     project="my-project-name",
///     name="my-firewall-rule",
///     network="default",
///     description="Creates firewall rule targeting tagged instances",
///     allows=[{
///         "protocol": "tcp",
///         "ports": [
///             "80",
///             "8080",
///             "1000-2000",
///         ],
///     }],
///     source_tags=["foo"],
///     target_tags=["web"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rules = new Gcp.Compute.Firewall("rules", new()
///     {
///         Project = "my-project-name",
///         Name = "my-firewall-rule",
///         Network = "default",
///         Description = "Creates firewall rule targeting tagged instances",
///         Allows = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "tcp",
///                 Ports = new[]
///                 {
///                     "80",
///                     "8080",
///                     "1000-2000",
///                 },
///             },
///         },
///         SourceTags = new[]
///         {
///             "foo",
///         },
///         TargetTags = new[]
///         {
///             "web",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewFirewall(ctx, "rules", &compute.FirewallArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			Name:        pulumi.String("my-firewall-rule"),
/// 			Network:     pulumi.String("default"),
/// 			Description: pulumi.String("Creates firewall rule targeting tagged instances"),
/// 			Allows: compute.FirewallAllowArray{
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("80"),
/// 						pulumi.String("8080"),
/// 						pulumi.String("1000-2000"),
/// 					},
/// 				},
/// 			},
/// 			SourceTags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 			},
/// 			TargetTags: pulumi.StringArray{
/// 				pulumi.String("web"),
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
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
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
///         var rules = new Firewall("rules", FirewallArgs.builder()
///             .project("my-project-name")
///             .name("my-firewall-rule")
///             .network("default")
///             .description("Creates firewall rule targeting tagged instances")
///             .allows(FirewallAllowArgs.builder()
///                 .protocol("tcp")
///                 .ports(
///                     "80",
///                     "8080",
///                     "1000-2000")
///                 .build())
///             .sourceTags("foo")
///             .targetTags("web")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rules:
///     type: gcp:compute:Firewall
///     properties:
///       project: my-project-name
///       name: my-firewall-rule
///       network: default
///       description: Creates firewall rule targeting tagged instances
///       allows:
///         - protocol: tcp
///           ports:
///             - '80'
///             - '8080'
///             - 1000-2000
///       sourceTags:
///         - foo
///       targetTags:
///         - web
/// ```
///
///
/// ## Import
///
/// Firewall can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewalls/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Firewall can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewall:Firewall default projects/{{project}}/global/firewalls/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewall:Firewall default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewall:Firewall default {{name}}
/// ```
class Firewall extends pulumi.CustomResource {
  /// The list of ALLOW rules specified by this firewall. Each rule
  /// specifies a protocol and port-range tuple that describes a permitted
  /// connection.
  /// Structure is documented below.
  late final pulumi.Output<List<FirewallAllow>?> allows;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// The list of DENY rules specified by this firewall. Each rule specifies
  /// a protocol and port-range tuple that describes a denied connection.
  /// Structure is documented below.
  late final pulumi.Output<List<FirewallDeny>?> denies;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// If destination ranges are specified, the firewall will apply only to
  /// traffic that has destination IP address in these ranges. These ranges
  /// must be expressed in CIDR format. IPv4 or IPv6 ranges are supported.
  late final pulumi.Output<List<String>> destinationRanges;

  /// Direction of traffic to which this firewall applies; default is
  /// INGRESS. Note: For INGRESS traffic, one of `source_ranges`,
  /// `source_tags` or `source_service_accounts` is required.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final pulumi.Output<String> direction;

  /// Denotes whether the firewall rule is disabled, i.e not applied to the
  /// network it is associated with. When set to true, the firewall rule is
  /// not enforced and the network behaves as if it did not exist. If this
  /// is unspecified, the firewall rule will be enabled.
  late final pulumi.Output<bool?> disabled;

  /// This field denotes whether to enable logging for a particular firewall rule.
  /// If logging is enabled, logs will be exported to Stackdriver. Deprecated in favor of `log_config`
  late final pulumi.Output<bool> enableLogging;

  /// This field denotes the logging options for a particular firewall rule.
  /// If defined, logging is enabled, and logs will be exported to Cloud Logging.
  /// Structure is documented below.
  late final pulumi.Output<FirewallLogConfig?> logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The name or self_link of the network to attach this firewall to.
  late final pulumi.Output<String> network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<FirewallParams?> params;

  /// Priority for this rule. This is an integer between 0 and 65535, both
  /// inclusive. When not specified, the value assumed is 1000. Relative
  /// priorities determine precedence of conflicting rules. Lower value of
  /// priority implies higher precedence (eg, a rule with priority 0 has
  /// higher precedence than a rule with priority 1). DENY rules take
  /// precedence over ALLOW rules having equal priority.
  late final pulumi.Output<int?> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// If source ranges are specified, the firewall will apply only to
  /// traffic that has source IP address in these ranges. These ranges must
  /// be expressed in CIDR format. One or both of sourceRanges and
  /// sourceTags may be set. If both properties are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP that belongs to a tag listed in the sourceTags property. The
  /// connection does not need to match both properties for the firewall to
  /// apply. IPv4 or IPv6 ranges are supported. For INGRESS traffic, one of
  /// `source_ranges`, `source_tags` or `source_service_accounts` is required.
  late final pulumi.Output<List<String>?> sourceRanges;

  /// If source service accounts are specified, the firewall will apply only
  /// to traffic originating from an instance with a service account in this
  /// list. Source service accounts cannot be used to control traffic to an
  /// instance's external IP address because service accounts are associated
  /// with an instance, not an IP address. sourceRanges can be set at the
  /// same time as sourceServiceAccounts. If both are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP belongs to an instance with service account listed in
  /// sourceServiceAccount. The connection does not need to match both
  /// properties for the firewall to apply. sourceServiceAccounts cannot be
  /// used at the same time as sourceTags or targetTags. For INGRESS traffic,
  /// one of `source_ranges`, `source_tags` or `source_service_accounts` is required.
  late final pulumi.Output<List<String>?> sourceServiceAccounts;

  /// If source tags are specified, the firewall will apply only to traffic
  /// with source IP that belongs to a tag listed in source tags. Source
  /// tags cannot be used to control traffic to an instance's external IP
  /// address. Because tags are associated with an instance, not an IP
  /// address. One or both of sourceRanges and sourceTags may be set. If
  /// both properties are set, the firewall will apply to traffic that has
  /// source IP address within sourceRanges OR the source IP that belongs to
  /// a tag listed in the sourceTags property. The connection does not need
  /// to match both properties for the firewall to apply. For INGRESS traffic,
  /// one of `source_ranges`, `source_tags` or `source_service_accounts` is required.
  late final pulumi.Output<List<String>?> sourceTags;

  /// A list of service accounts indicating sets of instances located in the
  /// network that may make network connections as specified in allowed[].
  /// targetServiceAccounts cannot be used at the same time as targetTags or
  /// sourceTags. If neither targetServiceAccounts nor targetTags are
  /// specified, the firewall rule applies to all instances on the specified
  /// network.
  late final pulumi.Output<List<String>?> targetServiceAccounts;

  /// A list of instance tags indicating sets of instances located in the
  /// network that may make network connections as specified in allowed[].
  /// If no targetTags are specified, the firewall rule applies to all
  /// instances on the specified network.
  late final pulumi.Output<List<String>?> targetTags;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_compute_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/firewall:Firewall',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allows = registerOutput<List<FirewallAllow>?>('allows');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.denies = registerOutput<List<FirewallDeny>?>('denies');
    this.description = registerOutput<String?>('description');
    this.destinationRanges = registerOutput<List<String>>('destinationRanges');
    this.direction = registerOutput<String>('direction');
    this.disabled = registerOutput<bool?>('disabled');
    this.enableLogging = registerOutput<bool>('enableLogging');
    this.logConfig = registerOutput<FirewallLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.params = registerOutput<FirewallParams?>('params');
    this.priority = registerOutput<int?>('priority');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sourceRanges = registerOutput<List<String>?>('sourceRanges');
    this.sourceServiceAccounts = registerOutput<List<String>?>(
      'sourceServiceAccounts',
    );
    this.sourceTags = registerOutput<List<String>?>('sourceTags');
    this.targetServiceAccounts = registerOutput<List<String>?>(
      'targetServiceAccounts',
    );
    this.targetTags = registerOutput<List<String>?>('targetTags');
  }
}
