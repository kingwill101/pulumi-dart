import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_protection_args.dart';
import 'origin_protection_state.dart';

/// Provides a ESA Origin Protection resource.
///
///
///
/// For information about ESA Origin Protection and how to use it, see [What is Origin Protection](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateOriginProtection).
///
/// > **NOTE:** Available since v1.256.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "chenxin0116.site",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultOriginProtection = new alicloud.esa.OriginProtection("default", {
///     originConverge: "on",
///     siteId: defaultSite.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="chenxin0116.site",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_origin_protection = alicloud.esa.OriginProtection("default",
///     origin_converge="on",
///     site_id=default_site.id)
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
///     var name = config.Get("name") ?? "tf-example";
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
///     var defaultOriginProtection = new AliCloud.Esa.OriginProtection("default", new()
///     {
///         OriginConverge = "on",
///         SiteId = defaultSite.Id,
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
/// 		name := "tf-example"
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
/// 		_, err = esa.NewOriginProtection(ctx, "default", &esa.OriginProtectionArgs{
/// 			OriginConverge: pulumi.String("on"),
/// 			SiteId:         defaultSite.ID(),
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
/// import com.pulumi.alicloud.esa.OriginProtection;
/// import com.pulumi.alicloud.esa.OriginProtectionArgs;
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
///         final var name = config.get("name").orElse("tf-example");
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
///         var defaultOriginProtection = new OriginProtection("defaultOriginProtection", OriginProtectionArgs.builder()
///             .originConverge("on")
///             .siteId(defaultSite.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: chenxin0116.site
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultOriginProtection:
///     type: alicloud:esa:OriginProtection
///     name: default
///     properties:
///       originConverge: on
///       siteId: ${defaultSite.id}
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
/// ESA Origin Protection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/originProtection:OriginProtection example <id>
/// ```
class OriginProtection extends pulumi.CustomResource {
  /// The IP convergence status.
  ///
  /// - on
  /// - off
  late final pulumi.Output<String?> originConverge;
  /// Site Id
  late final pulumi.Output<String> siteId;

  /// Creates a new [OriginProtection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginProtection]. {@macro pulumi_esa_origin_protection_origin_protection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginProtection(
    String name, {
    OriginProtectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/originProtection:OriginProtection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.originConverge = registerOutput<String?>('originConverge');
    this.siteId = registerOutput<String>('siteId');
  }

  /// Gets an existing [OriginProtection] resource's state with the given [name] and [id].
  static OriginProtection get(
    String name,
    pulumi.Input<String> id, {
    OriginProtectionState? state,
  }) {
    return OriginProtection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OriginProtection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/originProtection:OriginProtection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.originConverge = registerOutput<String?>('originConverge');
    this.siteId = registerOutput<String>('siteId');
  }
}
