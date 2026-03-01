import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_route_args.dart';
import 'routine_route_state.dart';

/// Provides a ESA Routine Route resource.
///
///
///
/// For information about ESA Routine Route and how to use it, see [What is Routine Route](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateRoutineRoute).
///
/// > **NOTE:** Available since v1.251.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "chenxin0116.site",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultRoutine = new alicloud.esa.Routine("default", {
///     description: "example-routine2",
///     name: "example-routine2",
/// });
/// const defaultRoutineRoute = new alicloud.esa.RoutineRoute("default", {
///     routeEnable: "on",
///     rule: "(http.host eq \"video.example1.com\")",
///     sequence: 1,
///     routineName: defaultRoutine.name,
///     siteId: defaultSite.id,
///     bypass: "off",
///     routeName: "example_routine",
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
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="chenxin0116.site",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_routine = alicloud.esa.Routine("default",
///     description="example-routine2",
///     name="example-routine2")
/// default_routine_route = alicloud.esa.RoutineRoute("default",
///     route_enable="on",
///     rule="(http.host eq \"video.example1.com\")",
///     sequence=1,
///     routine_name=default_routine.name,
///     site_id=default_site.id,
///     bypass="off",
///     route_name="example_routine")
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
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "chenxin0116.site",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultRoutine = new AliCloud.Esa.Routine("default", new()
///     {
///         Description = "example-routine2",
///         Name = "example-routine2",
///     });
///
///     var defaultRoutineRoute = new AliCloud.Esa.RoutineRoute("default", new()
///     {
///         RouteEnable = "on",
///         Rule = "(http.host eq \"video.example1.com\")",
///         Sequence = 1,
///         RoutineName = defaultRoutine.Name,
///         SiteId = defaultSite.Id,
///         Bypass = "off",
///         RouteName = "example_routine",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
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
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("chenxin0116.site"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRoutine, err := esa.NewRoutine(ctx, "default", &esa.RoutineArgs{
/// 			Description: pulumi.String("example-routine2"),
/// 			Name:        pulumi.String("example-routine2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewRoutineRoute(ctx, "default", &esa.RoutineRouteArgs{
/// 			RouteEnable: pulumi.String("on"),
/// 			Rule:        pulumi.String("(http.host eq \"video.example1.com\")"),
/// 			Sequence:    pulumi.Int(1),
/// 			RoutineName: defaultRoutine.Name,
/// 			SiteId:      defaultSite.ID(),
/// 			Bypass:      pulumi.String("off"),
/// 			RouteName:   pulumi.String("example_routine"),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.Routine;
/// import com.pulumi.alicloud.esa.RoutineArgs;
/// import com.pulumi.alicloud.esa.RoutineRoute;
/// import com.pulumi.alicloud.esa.RoutineRouteArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("chenxin0116.site")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultRoutine = new Routine("defaultRoutine", RoutineArgs.builder()
///             .description("example-routine2")
///             .name("example-routine2")
///             .build());
///
///         var defaultRoutineRoute = new RoutineRoute("defaultRoutineRoute", RoutineRouteArgs.builder()
///             .routeEnable("on")
///             .rule("(http.host eq \"video.example1.com\")")
///             .sequence(1)
///             .routineName(defaultRoutine.name())
///             .siteId(defaultSite.id())
///             .bypass("off")
///             .routeName("example_routine")
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
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: chenxin0116.site
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultRoutine:
///     type: alicloud:esa:Routine
///     name: default
///     properties:
///       description: example-routine2
///       name: example-routine2
///   defaultRoutineRoute:
///     type: alicloud:esa:RoutineRoute
///     name: default
///     properties:
///       routeEnable: on
///       rule: (http.host eq "video.example1.com")
///       sequence: '1'
///       routineName: ${defaultRoutine.name}
///       siteId: ${defaultSite.id}
///       bypass: off
///       routeName: example_routine
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Routine Route can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/routineRoute:RoutineRoute example <site_id>:<routine_name>:<config_id>
/// ```
class RoutineRoute extends pulumi.CustomResource {
  /// Bypass mode. Value range:
  /// - on: Open
  /// - off: off
  late final pulumi.Output<String?> bypass;
  /// Config Id
  late final pulumi.Output<int> configId;
  /// Spare
  late final pulumi.Output<String> fallback;
  /// Routing switch. Value range:
  /// - on: Open
  /// - off: off
  late final pulumi.Output<String?> routeEnable;
  /// The route name.
  late final pulumi.Output<String?> routeName;
  /// The edge function Routine name.
  late final pulumi.Output<String> routineName;
  /// The rule content.
  late final pulumi.Output<String?> rule;
  /// Rule execution order.
  late final pulumi.Output<int?> sequence;
  /// Site Id
  late final pulumi.Output<String> siteId;

  /// Creates a new [RoutineRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutineRoute]. {@macro pulumi_esa_routine_route_routine_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutineRoute(
    String name, {
    RoutineRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/routineRoute:RoutineRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bypass = registerOutput<String?>('bypass');
    this.configId = registerOutput<int>('configId');
    this.fallback = registerOutput<String>('fallback');
    this.routeEnable = registerOutput<String?>('routeEnable');
    this.routeName = registerOutput<String?>('routeName');
    this.routineName = registerOutput<String>('routineName');
    this.rule = registerOutput<String?>('rule');
    this.sequence = registerOutput<int?>('sequence');
    this.siteId = registerOutput<String>('siteId');
  }

  /// Gets an existing [RoutineRoute] resource's state with the given [name] and [id].
  static RoutineRoute get(
    String name,
    pulumi.Input<String> id, {
    RoutineRouteState? state,
  }) {
    return RoutineRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoutineRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/routineRoute:RoutineRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bypass = registerOutput<String?>('bypass');
    this.configId = registerOutput<int>('configId');
    this.fallback = registerOutput<String>('fallback');
    this.routeEnable = registerOutput<String?>('routeEnable');
    this.routeName = registerOutput<String?>('routeName');
    this.routineName = registerOutput<String>('routineName');
    this.rule = registerOutput<String?>('rule');
    this.sequence = registerOutput<int?>('sequence');
    this.siteId = registerOutput<String>('siteId');
  }
}
