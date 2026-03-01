import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_ingress_rule_args.dart';

/// Provides a VPC Traffic Mirror Filter Ingress Rule resource. Traffic mirror entry rule.
///
/// For information about VPC Traffic Mirror Filter Ingress Rule and how to use it, see [What is Traffic Mirror Filter Ingress Rule](https://www.alibabacloud.com/help/doc-detail/261357.htm).
///
/// > **NOTE:** Available since v1.141.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.vpc.TrafficMirrorFilter("example", {trafficMirrorFilterName: "example_value"});
/// const exampleTrafficMirrorFilterIngressRule = new alicloud.vpc.TrafficMirrorFilterIngressRule("example", {
///     trafficMirrorFilterId: example.id,
///     priority: 1,
///     action: "accept",
///     protocol: "UDP",
///     destinationCidrBlock: "10.0.0.0/24",
///     sourceCidrBlock: "10.0.0.0/24",
///     destinationPortRange: "1/120",
///     sourcePortRange: "1/120",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.vpc.TrafficMirrorFilter("example", traffic_mirror_filter_name="example_value")
/// example_traffic_mirror_filter_ingress_rule = alicloud.vpc.TrafficMirrorFilterIngressRule("example",
///     traffic_mirror_filter_id=example.id,
///     priority=1,
///     action="accept",
///     protocol="UDP",
///     destination_cidr_block="10.0.0.0/24",
///     source_cidr_block="10.0.0.0/24",
///     destination_port_range="1/120",
///     source_port_range="1/120")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Vpc.TrafficMirrorFilter("example", new()
///     {
///         TrafficMirrorFilterName = "example_value",
///     });
///
///     var exampleTrafficMirrorFilterIngressRule = new AliCloud.Vpc.TrafficMirrorFilterIngressRule("example", new()
///     {
///         TrafficMirrorFilterId = example.Id,
///         Priority = 1,
///         Action = "accept",
///         Protocol = "UDP",
///         DestinationCidrBlock = "10.0.0.0/24",
///         SourceCidrBlock = "10.0.0.0/24",
///         DestinationPortRange = "1/120",
///         SourcePortRange = "1/120",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpc.NewTrafficMirrorFilter(ctx, "example", &vpc.TrafficMirrorFilterArgs{
/// 			TrafficMirrorFilterName: pulumi.String("example_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewTrafficMirrorFilterIngressRule(ctx, "example", &vpc.TrafficMirrorFilterIngressRuleArgs{
/// 			TrafficMirrorFilterId: example.ID(),
/// 			Priority:              pulumi.Int(1),
/// 			Action:                pulumi.String("accept"),
/// 			Protocol:              pulumi.String("UDP"),
/// 			DestinationCidrBlock:  pulumi.String("10.0.0.0/24"),
/// 			SourceCidrBlock:       pulumi.String("10.0.0.0/24"),
/// 			DestinationPortRange:  pulumi.String("1/120"),
/// 			SourcePortRange:       pulumi.String("1/120"),
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
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilter;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterArgs;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterIngressRule;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterIngressRuleArgs;
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
///         var example = new TrafficMirrorFilter("example", TrafficMirrorFilterArgs.builder()
///             .trafficMirrorFilterName("example_value")
///             .build());
///
///         var exampleTrafficMirrorFilterIngressRule = new TrafficMirrorFilterIngressRule("exampleTrafficMirrorFilterIngressRule", TrafficMirrorFilterIngressRuleArgs.builder()
///             .trafficMirrorFilterId(example.id())
///             .priority(1)
///             .action("accept")
///             .protocol("UDP")
///             .destinationCidrBlock("10.0.0.0/24")
///             .sourceCidrBlock("10.0.0.0/24")
///             .destinationPortRange("1/120")
///             .sourcePortRange("1/120")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:vpc:TrafficMirrorFilter
///     properties:
///       trafficMirrorFilterName: example_value
///   exampleTrafficMirrorFilterIngressRule:
///     type: alicloud:vpc:TrafficMirrorFilterIngressRule
///     name: example
///     properties:
///       trafficMirrorFilterId: ${example.id}
///       priority: '1'
///       action: accept
///       protocol: UDP
///       destinationCidrBlock: 10.0.0.0/24
///       sourceCidrBlock: 10.0.0.0/24
///       destinationPortRange: 1/120
///       sourcePortRange: 1/120
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Traffic Mirror Filter Ingress Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/trafficMirrorFilterIngressRule:TrafficMirrorFilterIngressRule example <traffic_mirror_filter_id>:<traffic_mirror_filter_ingress_rule_id>
/// ```
class TrafficMirrorFilterIngressRuleVpc extends pulumi.CustomResource {
  /// The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  late final pulumi.Output<String> action;
  /// The destination CIDR block of the inbound traffic.
  late final pulumi.Output<String> destinationCidrBlock;
  /// The destination CIDR block of the inbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  late final pulumi.Output<String> destinationPortRange;
  /// Whether to PreCheck this request only. Value:
  /// - **true**: sends a check request and does not create inbound or outbound rules. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates an inbound or outbound direction rule after checking.
  late final pulumi.Output<bool?> dryRun;
  /// The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  late final pulumi.Output<int> priority;
  /// The transport protocol used by inbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  late final pulumi.Output<String> protocol;
  /// . Field 'rule_action' has been deprecated from provider version 1.211.0. New field 'action' instead.
  late final pulumi.Output<String> ruleAction;
  /// The source CIDR block of the inbound traffic.
  late final pulumi.Output<String> sourceCidrBlock;
  /// The source port range of the inbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  late final pulumi.Output<String> sourcePortRange;
  /// The state of the inbound rule. `Creating`, `Created`, `Modifying` and `Deleting`.
  late final pulumi.Output<String> status;
  /// The ID of the filter.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> trafficMirrorFilterId;
  /// The ID of the outbound rule.
  late final pulumi.Output<String> trafficMirrorFilterIngressRuleId;

  /// Creates a new [TrafficMirrorFilterIngressRuleVpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorFilterIngressRuleVpc]. {@macro pulumi_vpc_traffic_mirror_filter_ingress_rule_traffic_mirror_filter_ingress_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorFilterIngressRuleVpc(
    String name, {
    TrafficMirrorFilterIngressRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/trafficMirrorFilterIngressRule:TrafficMirrorFilterIngressRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.destinationPortRange = registerOutput<String>('destinationPortRange');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.priority = registerOutput<int>('priority');
    this.protocol = registerOutput<String>('protocol');
    this.ruleAction = registerOutput<String>('ruleAction');
    this.sourceCidrBlock = registerOutput<String>('sourceCidrBlock');
    this.sourcePortRange = registerOutput<String>('sourcePortRange');
    this.status = registerOutput<String>('status');
    this.trafficMirrorFilterId = registerOutput<String>('trafficMirrorFilterId');
    this.trafficMirrorFilterIngressRuleId = registerOutput<String>('trafficMirrorFilterIngressRuleId');
  }
}
