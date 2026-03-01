import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_route_table_aggregation_args.dart';
import 'transit_route_table_aggregation_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Route Table Aggregation resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Transit Route Table Aggregation and how to use it, see [What is Transit Route Table Aggregation](https://next.api.alibabacloud.com/document/Cbn/2017-09-12/CreateTransitRouteTableAggregation).
///
/// > **NOTE:** Available since v1.245.0.
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
/// const exampleTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("example", {transitRouterId: exampleTransitRouter.transitRouterId});
/// const exampleTransitRouteTableAggregation = new alicloud.cen.TransitRouteTableAggregation("example", {
///     transitRouteTableId: exampleTransitRouterRouteTable.transitRouterRouteTableId,
///     transitRouteTableAggregationCidr: "10.0.0.0/8",
///     transitRouteTableAggregationScope: "VPC",
///     transitRouteTableAggregationName: "tf_example",
///     transitRouteTableAggregationDescription: "tf_example",
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
/// example_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("example", transit_router_id=example_transit_router.transit_router_id)
/// example_transit_route_table_aggregation = alicloud.cen.TransitRouteTableAggregation("example",
///     transit_route_table_id=example_transit_router_route_table.transit_router_route_table_id,
///     transit_route_table_aggregation_cidr="10.0.0.0/8",
///     transit_route_table_aggregation_scope="VPC",
///     transit_route_table_aggregation_name="tf_example",
///     transit_route_table_aggregation_description="tf_example")
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
///     var exampleTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///     });
///
///     var exampleTransitRouteTableAggregation = new AliCloud.Cen.TransitRouteTableAggregation("example", new()
///     {
///         TransitRouteTableId = exampleTransitRouterRouteTable.TransitRouterRouteTableId,
///         TransitRouteTableAggregationCidr = "10.0.0.0/8",
///         TransitRouteTableAggregationScope = "VPC",
///         TransitRouteTableAggregationName = "tf_example",
///         TransitRouteTableAggregationDescription = "tf_example",
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
/// 		exampleTransitRouterRouteTable, err := cen.NewTransitRouterRouteTable(ctx, "example", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId: exampleTransitRouter.TransitRouterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouteTableAggregation(ctx, "example", &cen.TransitRouteTableAggregationArgs{
/// 			TransitRouteTableId:                     exampleTransitRouterRouteTable.TransitRouterRouteTableId,
/// 			TransitRouteTableAggregationCidr:        pulumi.String("10.0.0.0/8"),
/// 			TransitRouteTableAggregationScope:       pulumi.String("VPC"),
/// 			TransitRouteTableAggregationName:        pulumi.String("tf_example"),
/// 			TransitRouteTableAggregationDescription: pulumi.String("tf_example"),
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
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.cen.TransitRouteTableAggregation;
/// import com.pulumi.alicloud.cen.TransitRouteTableAggregationArgs;
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
///         var exampleTransitRouterRouteTable = new TransitRouterRouteTable("exampleTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .build());
///
///         var exampleTransitRouteTableAggregation = new TransitRouteTableAggregation("exampleTransitRouteTableAggregation", TransitRouteTableAggregationArgs.builder()
///             .transitRouteTableId(exampleTransitRouterRouteTable.transitRouterRouteTableId())
///             .transitRouteTableAggregationCidr("10.0.0.0/8")
///             .transitRouteTableAggregationScope("VPC")
///             .transitRouteTableAggregationName("tf_example")
///             .transitRouteTableAggregationDescription("tf_example")
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
///   exampleTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///   exampleTransitRouteTableAggregation:
///     type: alicloud:cen:TransitRouteTableAggregation
///     name: example
///     properties:
///       transitRouteTableId: ${exampleTransitRouterRouteTable.transitRouterRouteTableId}
///       transitRouteTableAggregationCidr: 10.0.0.0/8
///       transitRouteTableAggregationScope: VPC
///       transitRouteTableAggregationName: tf_example
///       transitRouteTableAggregationDescription: tf_example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Route Table Aggregation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouteTableAggregation:TransitRouteTableAggregation example <transit_route_table_id>#<transit_route_table_aggregation_cidr>
/// ```
class TransitRouteTableAggregation extends pulumi.CustomResource {
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The destination CIDR block of the aggregate route.
  ///
  /// > **NOTE:**   The following CIDR blocks are not supported:
  ///
  /// > **NOTE:** *   CIDR blocks that start with 0 or 100.64.
  ///
  /// > **NOTE:** *   Multicast CIDR blocks, including 224.0.0.1 to 239.255.255.254.
  late final pulumi.Output<String> transitRouteTableAggregationCidr;
  /// The list of propagation ranges of the aggregation route.
  ///
  /// > **NOTE:**   You must specify at least one of the following attributes: Aggregation Scope and Aggregate Scope List. We recommend that you specify the latter. The elements in the two attributes cannot be duplicate.
  late final pulumi.Output<String?> transitRouteTableAggregationDescription;
  /// The name of the aggregate route.
  /// The name can be empty or 1 to 128 characters in length, and cannot start with http:// or https://.
  late final pulumi.Output<String?> transitRouteTableAggregationName;
  /// The scope of networks that you want to advertise the aggregate route.
  /// The valid value is `VPC`, which indicates that the aggregate route is advertised to all VPCs that have associated forwarding correlation with the Enterprise Edition transit router and have route synchronization enabled.
  late final pulumi.Output<String?> transitRouteTableAggregationScope;
  /// Aggregation Route Scopes
  late final pulumi.Output<List<String>?> transitRouteTableAggregationScopeLists;
  /// The list of route table IDs of the Enterprise Edition transit router.
  late final pulumi.Output<String> transitRouteTableId;

  /// Creates a new [TransitRouteTableAggregation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouteTableAggregation]. {@macro pulumi_cen_transit_route_table_aggregation_transit_route_table_aggregation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouteTableAggregation(
    String name, {
    TransitRouteTableAggregationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouteTableAggregation:TransitRouteTableAggregation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.status = registerOutput<String>('status');
    this.transitRouteTableAggregationCidr = registerOutput<String>('transitRouteTableAggregationCidr');
    this.transitRouteTableAggregationDescription = registerOutput<String?>('transitRouteTableAggregationDescription');
    this.transitRouteTableAggregationName = registerOutput<String?>('transitRouteTableAggregationName');
    this.transitRouteTableAggregationScope = registerOutput<String?>('transitRouteTableAggregationScope');
    this.transitRouteTableAggregationScopeLists = registerOutput<List<String>?>('transitRouteTableAggregationScopeLists');
    this.transitRouteTableId = registerOutput<String>('transitRouteTableId');
  }

  /// Gets an existing [TransitRouteTableAggregation] resource's state with the given [name] and [id].
  static TransitRouteTableAggregation get(
    String name,
    pulumi.Input<String> id, {
    TransitRouteTableAggregationState? state,
  }) {
    return TransitRouteTableAggregation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouteTableAggregation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouteTableAggregation:TransitRouteTableAggregation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.status = registerOutput<String>('status');
    this.transitRouteTableAggregationCidr = registerOutput<String>('transitRouteTableAggregationCidr');
    this.transitRouteTableAggregationDescription = registerOutput<String?>('transitRouteTableAggregationDescription');
    this.transitRouteTableAggregationName = registerOutput<String?>('transitRouteTableAggregationName');
    this.transitRouteTableAggregationScope = registerOutput<String?>('transitRouteTableAggregationScope');
    this.transitRouteTableAggregationScopeLists = registerOutput<List<String>?>('transitRouteTableAggregationScopeLists');
    this.transitRouteTableId = registerOutput<String>('transitRouteTableId');
  }
}
