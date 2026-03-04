import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_egress_rule_args.dart';
import 'traffic_mirror_filter_egress_rule_state.dart';

/// Provides a VPC Traffic Mirror Filter Egress Rule resource.
///
/// For information about VPC Traffic Mirror Filter Egress Rule and how to use it, see [What is Traffic Mirror Filter Egress Rule](https://www.alibabacloud.com/help/doc-detail/261357.htm).
///
/// &gt; **NOTE:** Available since v1.140.0.
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
/// const _default = new alicloud.vpc.TrafficMirrorFilterEgressRule("default", {
///     action: "drop",
///     priority: 2,
///     sourceCidrBlock: "10.0.0.0/11",
///     destinationCidrBlock: "10.0.0.0/12",
///     trafficMirrorFilterId: example.id,
///     protocol: "ALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.vpc.TrafficMirrorFilter("example", traffic_mirror_filter_name="example_value")
/// default = alicloud.vpc.TrafficMirrorFilterEgressRule("default",
///     action="drop",
///     priority=2,
///     source_cidr_block="10.0.0.0/11",
///     destination_cidr_block="10.0.0.0/12",
///     traffic_mirror_filter_id=example.id,
///     protocol="ALL")
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
///     var @default = new AliCloud.Vpc.TrafficMirrorFilterEgressRule("default", new()
///     {
///         Action = "drop",
///         Priority = 2,
///         SourceCidrBlock = "10.0.0.0/11",
///         DestinationCidrBlock = "10.0.0.0/12",
///         TrafficMirrorFilterId = example.Id,
///         Protocol = "ALL",
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
/// 		_, err = vpc.NewTrafficMirrorFilterEgressRule(ctx, "default", &vpc.TrafficMirrorFilterEgressRuleArgs{
/// 			Action:                pulumi.String("drop"),
/// 			Priority:              pulumi.Int(2),
/// 			SourceCidrBlock:       pulumi.String("10.0.0.0/11"),
/// 			DestinationCidrBlock:  pulumi.String("10.0.0.0/12"),
/// 			TrafficMirrorFilterId: example.ID(),
/// 			Protocol:              pulumi.String("ALL"),
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
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterEgressRule;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterEgressRuleArgs;
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
///         var default_ = new TrafficMirrorFilterEgressRule("default", TrafficMirrorFilterEgressRuleArgs.builder()
///             .action("drop")
///             .priority(2)
///             .sourceCidrBlock("10.0.0.0/11")
///             .destinationCidrBlock("10.0.0.0/12")
///             .trafficMirrorFilterId(example.id())
///             .protocol("ALL")
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
///   default:
///     type: alicloud:vpc:TrafficMirrorFilterEgressRule
///     properties:
///       action: drop
///       priority: '2'
///       sourceCidrBlock: 10.0.0.0/11
///       destinationCidrBlock: 10.0.0.0/12
///       trafficMirrorFilterId: ${example.id}
///       protocol: ALL
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Traffic Mirror Filter Egress Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/trafficMirrorFilterEgressRule:TrafficMirrorFilterEgressRule example <traffic_mirror_filter_id>:<traffic_mirror_filter_egress_rule_id>
/// ```
class TrafficMirrorFilterEgressRuleVpc extends pulumi.CustomResource {
  /// The collection policy of the inbound rule. Valid values: `accept` or `drop`. `accept`: collects network traffic. `drop`: does not collect network traffic.
  late final pulumi.Output<String> action;

  /// The destination CIDR block of the outbound traffic.
  late final pulumi.Output<String> destinationCidrBlock;

  /// The destination CIDR block of the outbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  late final pulumi.Output<String> destinationPortRange;

  /// Whether to PreCheck this request only. Value:
  /// - **true**: sends a check request and does not create inbound or outbound rules. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates an inbound or outbound direction rule after checking.
  late final pulumi.Output<bool?> dryRun;

  /// The priority of the inbound rule. A smaller value indicates a higher priority. The maximum value is `10`, which indicates that you can configure at most 10 inbound rules for a filter.
  late final pulumi.Output<int> priority;

  /// The transport protocol used by outbound traffic that needs to be mirrored. Valid values: `ALL`, `ICMP`, `TCP`, `UDP`.
  late final pulumi.Output<String> protocol;

  /// . Field 'rule_action' has been deprecated from provider version 1.211.0. New field 'action' instead.
  late final pulumi.Output<String> ruleAction;

  /// The source CIDR block of the outbound traffic.
  late final pulumi.Output<String> sourceCidrBlock;

  /// The source port range of the outbound traffic. Valid values: `1` to `65535`. Separate the first port and last port with a forward slash (/), for example, `1/200` or `80/80`. A value of `-1/-1` indicates that all ports are available. Therefore, do not set the value to `-1/-1`. **NOTE:** When `protocol` is `ICMP`, this parameter is invalid.
  late final pulumi.Output<String> sourcePortRange;

  /// The state of the inbound rule. `Creating`, `Created`, `Modifying` and `Deleting`.
  late final pulumi.Output<String> status;

  /// The ID of the outbound rule.
  late final pulumi.Output<String> trafficMirrorFilterEgressRuleId;

  /// The ID of the filter.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> trafficMirrorFilterId;

  /// Creates a new [TrafficMirrorFilterEgressRuleVpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorFilterEgressRuleVpc]. {@macro pulumi_vpc_traffic_mirror_filter_egress_rule_traffic_mirror_filter_egress_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorFilterEgressRuleVpc(
    String name, {
    TrafficMirrorFilterEgressRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/trafficMirrorFilterEgressRule:TrafficMirrorFilterEgressRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    destinationPortRange = registerOutput<String>('destinationPortRange');
    dryRun = registerOutput<bool?>('dryRun');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    ruleAction = registerOutput<String>('ruleAction');
    sourceCidrBlock = registerOutput<String>('sourceCidrBlock');
    sourcePortRange = registerOutput<String>('sourcePortRange');
    status = registerOutput<String>('status');
    trafficMirrorFilterEgressRuleId = registerOutput<String>(
      'trafficMirrorFilterEgressRuleId',
    );
    trafficMirrorFilterId = registerOutput<String>('trafficMirrorFilterId');
  }

  /// Gets an existing [TrafficMirrorFilterEgressRuleVpc] resource's state with the given [name] and [id].
  static TrafficMirrorFilterEgressRuleVpc get(
    String name,
    pulumi.Input<String> id, {
    TrafficMirrorFilterEgressRuleState? state,
  }) {
    return TrafficMirrorFilterEgressRuleVpc._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficMirrorFilterEgressRuleVpc._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/trafficMirrorFilterEgressRule:TrafficMirrorFilterEgressRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    destinationPortRange = registerOutput<String>('destinationPortRange');
    dryRun = registerOutput<bool?>('dryRun');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    ruleAction = registerOutput<String>('ruleAction');
    sourceCidrBlock = registerOutput<String>('sourceCidrBlock');
    sourcePortRange = registerOutput<String>('sourcePortRange');
    status = registerOutput<String>('status');
    trafficMirrorFilterEgressRuleId = registerOutput<String>(
      'trafficMirrorFilterEgressRuleId',
    );
    trafficMirrorFilterId = registerOutput<String>('trafficMirrorFilterId');
  }
}
