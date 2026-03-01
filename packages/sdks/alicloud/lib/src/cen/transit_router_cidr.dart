import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_cidr_args.dart';
import 'transit_router_cidr_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Cidr resource.
///
/// Used for Vpn Attachment, Connect Attachment, etc. Assign address segments.
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Cidr and how to use it, see [What is Transit Router Cidr](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/createtransitroutercidr).
///
/// > **NOTE:** Available since v1.193.0.
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
/// const exampleTransitRouterCidr = new alicloud.cen.TransitRouterCidr("example", {
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     cidr: "192.168.0.0/16",
///     transitRouterCidrName: "tf_example",
///     description: "tf_example",
///     publishCidrRoute: true,
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
/// example_transit_router_cidr = alicloud.cen.TransitRouterCidr("example",
///     transit_router_id=example_transit_router.transit_router_id,
///     cidr="192.168.0.0/16",
///     transit_router_cidr_name="tf_example",
///     description="tf_example",
///     publish_cidr_route=True)
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
///     var exampleTransitRouterCidr = new AliCloud.Cen.TransitRouterCidr("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         Cidr = "192.168.0.0/16",
///         TransitRouterCidrName = "tf_example",
///         Description = "tf_example",
///         PublishCidrRoute = true,
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
/// 		_, err = cen.NewTransitRouterCidr(ctx, "example", &cen.TransitRouterCidrArgs{
/// 			TransitRouterId:       exampleTransitRouter.TransitRouterId,
/// 			Cidr:                  pulumi.String("192.168.0.0/16"),
/// 			TransitRouterCidrName: pulumi.String("tf_example"),
/// 			Description:           pulumi.String("tf_example"),
/// 			PublishCidrRoute:      pulumi.Bool(true),
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
/// import com.pulumi.alicloud.cen.TransitRouterCidr;
/// import com.pulumi.alicloud.cen.TransitRouterCidrArgs;
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
///         var exampleTransitRouterCidr = new TransitRouterCidr("exampleTransitRouterCidr", TransitRouterCidrArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .cidr("192.168.0.0/16")
///             .transitRouterCidrName("tf_example")
///             .description("tf_example")
///             .publishCidrRoute(true)
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
///   exampleTransitRouterCidr:
///     type: alicloud:cen:TransitRouterCidr
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       cidr: 192.168.0.0/16
///       transitRouterCidrName: tf_example
///       description: tf_example
///       publishCidrRoute: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Cidr can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterCidr:TransitRouterCidr example <transit_router_id>:<transit_router_cidr_id>
/// ```
class TransitRouterCidr extends pulumi.CustomResource {
  /// The new CIDR block of the transit router.
  late final pulumi.Output<String> cidr;
  /// The new description of the transit router CIDR block.
  /// The description must be 1 to 256 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  late final pulumi.Output<String?> description;
  /// Specifies whether to allow the system to automatically add a route that points to the CIDR block to the route table of the transit router.
  late final pulumi.Output<bool?> publishCidrRoute;
  /// The ID of the CIDR block.
  late final pulumi.Output<String> transitRouterCidrId;
  /// The new name of the transit router CIDR block.
  /// The name must be 1 to 128 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  late final pulumi.Output<String?> transitRouterCidrName;
  /// The ID of the transit router.
  late final pulumi.Output<String> transitRouterId;

  /// Creates a new [TransitRouterCidr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterCidr]. {@macro pulumi_cen_transit_router_cidr_transit_router_cidr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterCidr(
    String name, {
    TransitRouterCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterCidr:TransitRouterCidr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.description = registerOutput<String?>('description');
    this.publishCidrRoute = registerOutput<bool?>('publishCidrRoute');
    this.transitRouterCidrId = registerOutput<String>('transitRouterCidrId');
    this.transitRouterCidrName = registerOutput<String?>('transitRouterCidrName');
    this.transitRouterId = registerOutput<String>('transitRouterId');
  }

  /// Gets an existing [TransitRouterCidr] resource's state with the given [name] and [id].
  static TransitRouterCidr get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterCidrState? state,
  }) {
    return TransitRouterCidr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterCidr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterCidr:TransitRouterCidr',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.description = registerOutput<String?>('description');
    this.publishCidrRoute = registerOutput<bool?>('publishCidrRoute');
    this.transitRouterCidrId = registerOutput<String>('transitRouterCidrId');
    this.transitRouterCidrName = registerOutput<String?>('transitRouterCidrName');
    this.transitRouterId = registerOutput<String>('transitRouterId');
  }
}
