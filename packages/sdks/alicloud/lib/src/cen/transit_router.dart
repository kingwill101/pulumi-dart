import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_args.dart';
import 'transit_router_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Transit Router and how to use it, see [What is Transit Router](https://next.api.alibabacloud.com/document/Cbn/2017-09-12/CreateTransitRouter).
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: name,
///     description: name,
/// });
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     cenId: example.id,
///     transitRouterName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// example = alicloud.cen.Instance("example",
///     cen_instance_name=name,
///     description=name)
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     cen_id=example.id,
///     transit_router_name=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///         Description = name,
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         CenId = example.Id,
///         TransitRouterName = name,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			CenId:             example.ID(),
/// 			TransitRouterName: pulumi.String(name),
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .description(name)
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .cenId(example.id())
///             .transitRouterName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///       description: ${name}
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       cenId: ${example.id}
///       transitRouterName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouter:TransitRouter example <cen_id>:<transit_router_id>
/// ```
class TransitRouter extends pulumi.CustomResource {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  late final pulumi.Output<String> cenId;
  /// (Available since v1.247.0) The time when the transit router was created.
  late final pulumi.Output<String> createTime;
  /// The dry run.
  late final pulumi.Output<bool?> dryRun;
  /// (Available since v1.247.0) The ID of the region where the transit router is deployed.
  late final pulumi.Output<String> regionId;
  /// The status of the transit router.
  late final pulumi.Output<String> status;
  /// Specifies whether to enable the multicast feature for the Enterprise Edition transit router. Valid values:
  late final pulumi.Output<bool?> supportMulticast;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The description of the Enterprise Edition transit router instance.
  /// The description must be 1 to 256 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  late final pulumi.Output<String?> transitRouterDescription;
  /// The ID of the transit router.
  late final pulumi.Output<String> transitRouterId;
  /// The name of the Enterprise Edition transit router.
  /// The name must be 1 to 128 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  late final pulumi.Output<String?> transitRouterName;
  /// The edition of the transit router.
  late final pulumi.Output<String> type;

  /// Creates a new [TransitRouter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouter]. {@macro pulumi_cen_transit_router_transit_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouter(
    String name, {
    TransitRouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouter:TransitRouter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
    this.supportMulticast = registerOutput<bool?>('supportMulticast');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterDescription = registerOutput<String?>('transitRouterDescription');
    this.transitRouterId = registerOutput<String>('transitRouterId');
    this.transitRouterName = registerOutput<String?>('transitRouterName');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [TransitRouter] resource's state with the given [name] and [id].
  static TransitRouter get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterState? state,
  }) {
    return TransitRouter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouter:TransitRouter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
    this.supportMulticast = registerOutput<bool?>('supportMulticast');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterDescription = registerOutput<String?>('transitRouterDescription');
    this.transitRouterId = registerOutput<String>('transitRouterId');
    this.transitRouterName = registerOutput<String?>('transitRouterName');
    this.type = registerOutput<String>('type');
  }
}
