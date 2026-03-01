import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_route_table_args.dart';

/// Provides a CEN transit router route table resource.[What is Cen Transit Router Route Table](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtransitrouterroutetable)
///
/// > **NOTE:** Available since v1.126.0.
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
/// 		_, err = cen.NewTransitRouterRouteTable(ctx, "example", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId: exampleTransitRouter.TransitRouterId,
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN transit router route table  can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterRouteTable:TransitRouterRouteTable default tr-*********:vtb-********
/// ```
class TransitRouterRouteTable extends pulumi.CustomResource {
  /// The dry run.
  late final pulumi.Output<bool?> dryRun;
  /// The associating status of the Transit Router.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the transit router.
  late final pulumi.Output<String> transitRouterId;
  /// The description of the transit router route table.
  late final pulumi.Output<String> transitRouterRouteTableDescription;
  /// The id of the transit router route table.
  late final pulumi.Output<String> transitRouterRouteTableId;
  /// The name of the transit router route table.
  late final pulumi.Output<String?> transitRouterRouteTableName;
  /// The type of the transit router route table. Valid values: `Custom`, `System`.
  late final pulumi.Output<String> transitRouterRouteTableType;

  /// Creates a new [TransitRouterRouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterRouteTable]. {@macro pulumi_cen_transit_router_route_table_transit_router_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterRouteTable(
    String name, {
    TransitRouterRouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterRouteTable:TransitRouterRouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterId = registerOutput<String>('transitRouterId');
    this.transitRouterRouteTableDescription = registerOutput<String>('transitRouterRouteTableDescription');
    this.transitRouterRouteTableId = registerOutput<String>('transitRouterRouteTableId');
    this.transitRouterRouteTableName = registerOutput<String?>('transitRouterRouteTableName');
    this.transitRouterRouteTableType = registerOutput<String>('transitRouterRouteTableType');
  }
}
