import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_multicast_domain_args.dart';
import 'transit_router_multicast_domain_options.dart';
import 'transit_router_multicast_domain_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Multicast Domain resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Multicast Domain and how to use it, see [What is Transit Router Multicast Domain](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtransitroutermulticastdomain).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const example = new alicloud.cen.Instance("example", {cenInstanceName: name});
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     transitRouterName: name,
///     cenId: example.id,
///     supportMulticast: true,
/// });
/// const _default = new alicloud.cen.TransitRouterMulticastDomain("default", {
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     transitRouterMulticastDomainName: name,
///     transitRouterMulticastDomainDescription: name,
///     options: {
///         igmpv2Support: "disable",
///     },
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
/// example = alicloud.cen.Instance("example", cen_instance_name=name)
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     transit_router_name=name,
///     cen_id=example.id,
///     support_multicast=True)
/// default = alicloud.cen.TransitRouterMulticastDomain("default",
///     transit_router_id=example_transit_router.transit_router_id,
///     transit_router_multicast_domain_name=name,
///     transit_router_multicast_domain_description=name,
///     options={
///         "igmpv2_support": "disable",
///     })
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
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         TransitRouterName = name,
///         CenId = example.Id,
///         SupportMulticast = true,
///     });
///
///     var @default = new AliCloud.Cen.TransitRouterMulticastDomain("default", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         TransitRouterMulticastDomainName = name,
///         TransitRouterMulticastDomainDescription = name,
///         Options = new AliCloud.Cen.Inputs.TransitRouterMulticastDomainOptionsArgs
///         {
///             Igmpv2Support = "disable",
///         },
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			TransitRouterName: pulumi.String(name),
/// 			CenId:             example.ID(),
/// 			SupportMulticast:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterMulticastDomain(ctx, "default", &cen.TransitRouterMulticastDomainArgs{
/// 			TransitRouterId:                         exampleTransitRouter.TransitRouterId,
/// 			TransitRouterMulticastDomainName:        pulumi.String(name),
/// 			TransitRouterMulticastDomainDescription: pulumi.String(name),
/// 			Options: &cen.TransitRouterMulticastDomainOptionsArgs{
/// 				Igmpv2Support: pulumi.String("disable"),
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomain;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterMulticastDomainOptionsArgs;
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
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName(name)
///             .cenId(example.id())
///             .supportMulticast(true)
///             .build());
///
///         var default_ = new TransitRouterMulticastDomain("default", TransitRouterMulticastDomainArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .transitRouterMulticastDomainName(name)
///             .transitRouterMulticastDomainDescription(name)
///             .options(TransitRouterMulticastDomainOptionsArgs.builder()
///                 .igmpv2Support("disable")
///                 .build())
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
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       transitRouterName: ${name}
///       cenId: ${example.id}
///       supportMulticast: true
///   default:
///     type: alicloud:cen:TransitRouterMulticastDomain
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       transitRouterMulticastDomainName: ${name}
///       transitRouterMulticastDomainDescription: ${name}
///       options:
///         igmpv2Support: disable
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Multicast Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterMulticastDomain:TransitRouterMulticastDomain example <id>
/// ```
class TransitRouterMulticastDomain extends pulumi.CustomResource {
  /// The function options of the multicast domain. See `options` below.
  late final pulumi.Output<TransitRouterMulticastDomainOptions> options;

  /// (Available since v1.242.0) The region ID of the transit router.
  late final pulumi.Output<String> regionId;

  /// The status of the Transit Router Multicast Domain.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the forwarding router instance.
  late final pulumi.Output<String> transitRouterId;

  /// The description of the multicast domain.
  late final pulumi.Output<String?> transitRouterMulticastDomainDescription;

  /// The name of the multicast domain.
  late final pulumi.Output<String?> transitRouterMulticastDomainName;

  /// Creates a new [TransitRouterMulticastDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterMulticastDomain]. {@macro pulumi_cen_transit_router_multicast_domain_transit_router_multicast_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterMulticastDomain(
    String name, {
    TransitRouterMulticastDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterMulticastDomain:TransitRouterMulticastDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.options = registerOutput<TransitRouterMulticastDomainOptions>(
      'options',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TransitRouterMulticastDomainOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    transitRouterId = registerOutput<String>('transitRouterId');
    transitRouterMulticastDomainDescription = registerOutput<String?>(
      'transitRouterMulticastDomainDescription',
    );
    transitRouterMulticastDomainName = registerOutput<String?>(
      'transitRouterMulticastDomainName',
    );
  }

  /// Gets an existing [TransitRouterMulticastDomain] resource's state with the given [name] and [id].
  static TransitRouterMulticastDomain get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterMulticastDomainState? state,
  }) {
    return TransitRouterMulticastDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterMulticastDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterMulticastDomain:TransitRouterMulticastDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.options = registerOutput<TransitRouterMulticastDomainOptions>(
      'options',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TransitRouterMulticastDomainOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    transitRouterId = registerOutput<String>('transitRouterId');
    transitRouterMulticastDomainDescription = registerOutput<String?>(
      'transitRouterMulticastDomainDescription',
    );
    transitRouterMulticastDomainName = registerOutput<String?>(
      'transitRouterMulticastDomainName',
    );
  }
}
