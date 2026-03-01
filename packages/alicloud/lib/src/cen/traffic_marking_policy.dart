import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_marking_policy_args.dart';
import 'traffic_marking_policy_traffic_match_rule.dart';

/// Provides a Cloud Enterprise Network (CEN) Traffic Marking Policy resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Traffic Marking Policy and how to use it, see [What is Traffic Marking Policy](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtrafficmarkingpolicy).
///
/// > **NOTE:** Available since v1.173.0.
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
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     transitRouterName: "tf_example",
///     cenId: example.id,
/// });
/// const exampleTrafficMarkingPolicy = new alicloud.cen.TrafficMarkingPolicy("example", {
///     markingDscp: 1,
///     priority: 1,
///     trafficMarkingPolicyName: "tf_example",
///     transitRouterId: exampleTransitRouter.transitRouterId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     transit_router_name="tf_example",
///     cen_id=example.id)
/// example_traffic_marking_policy = alicloud.cen.TrafficMarkingPolicy("example",
///     marking_dscp=1,
///     priority=1,
///     traffic_marking_policy_name="tf_example",
///     transit_router_id=example_transit_router.transit_router_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         TransitRouterName = "tf_example",
///         CenId = example.Id,
///     });
///
///     var exampleTrafficMarkingPolicy = new AliCloud.Cen.TrafficMarkingPolicy("example", new()
///     {
///         MarkingDscp = 1,
///         Priority = 1,
///         TrafficMarkingPolicyName = "tf_example",
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			TransitRouterName: pulumi.String("tf_example"),
/// 			CenId:             example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTrafficMarkingPolicy(ctx, "example", &cen.TrafficMarkingPolicyArgs{
/// 			MarkingDscp:              pulumi.Int(1),
/// 			Priority:                 pulumi.Int(1),
/// 			TrafficMarkingPolicyName: pulumi.String("tf_example"),
/// 			TransitRouterId:          exampleTransitRouter.TransitRouterId,
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TrafficMarkingPolicy;
/// import com.pulumi.alicloud.cen.TrafficMarkingPolicyArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName("tf_example")
///             .cenId(example.id())
///             .build());
///
///         var exampleTrafficMarkingPolicy = new TrafficMarkingPolicy("exampleTrafficMarkingPolicy", TrafficMarkingPolicyArgs.builder()
///             .markingDscp(1)
///             .priority(1)
///             .trafficMarkingPolicyName("tf_example")
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       transitRouterName: tf_example
///       cenId: ${example.id}
///   exampleTrafficMarkingPolicy:
///     type: alicloud:cen:TrafficMarkingPolicy
///     name: example
///     properties:
///       markingDscp: 1
///       priority: 1
///       trafficMarkingPolicyName: tf_example
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Traffic Marking Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/trafficMarkingPolicy:TrafficMarkingPolicy example <transit_router_id>:<traffic_marking_policy_id>
/// ```
class TrafficMarkingPolicy extends pulumi.CustomResource {
  /// TrafficMarkingPolicyDescription
  late final pulumi.Output<String?> description;
  /// Whether to PreCheck only this request. Value:
  late final pulumi.Output<bool?> dryRun;
  /// Whether to forcibly delete the traffic marker policy. Valid values:
  late final pulumi.Output<bool?> force;
  /// MarkingDscp
  late final pulumi.Output<int> markingDscp;
  /// Priority
  late final pulumi.Output<int> priority;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The first ID of the resource
  late final pulumi.Output<String> trafficMarkingPolicyId;
  /// TrafficMarkingPolicyName
  late final pulumi.Output<String?> trafficMarkingPolicyName;
  /// List of stream classification rules.
  /// You can add up to 50 stream classification rules at a time. See `traffic_match_rules` below.
  late final pulumi.Output<List<TrafficMarkingPolicyTrafficMatchRule>?> trafficMatchRules;
  /// TransitRouterId
  late final pulumi.Output<String> transitRouterId;

  /// Creates a new [TrafficMarkingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMarkingPolicy]. {@macro pulumi_cen_traffic_marking_policy_traffic_marking_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMarkingPolicy(
    String name, {
    TrafficMarkingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/trafficMarkingPolicy:TrafficMarkingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.force = registerOutput<bool?>('force');
    this.markingDscp = registerOutput<int>('markingDscp');
    this.priority = registerOutput<int>('priority');
    this.status = registerOutput<String>('status');
    this.trafficMarkingPolicyId = registerOutput<String>('trafficMarkingPolicyId');
    this.trafficMarkingPolicyName = registerOutput<String?>('trafficMarkingPolicyName');
    this.trafficMatchRules = registerOutput<List<TrafficMarkingPolicyTrafficMatchRule>?>('trafficMatchRules');
    this.transitRouterId = registerOutput<String>('transitRouterId');
  }
}
