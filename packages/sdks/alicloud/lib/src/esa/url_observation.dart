import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_observation_args.dart';
import 'url_observation_state.dart';

/// Provides a ESA Url Observation resource.
///
/// Web page monitoring.
///
/// For information about ESA Url Observation and how to use it, see [What is Url Observation](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateUrlObservation).
///
/// &gt; **NOTE:** Available since v1.259.0.
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
///     siteName: "terraform.cn",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultUrlObservation = new alicloud.esa.UrlObservation("default", {
///     sdkType: "automatic",
///     siteId: defaultSite.id,
///     url: "terraform.cn/a.html",
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
///     site_name="terraform.cn",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_url_observation = alicloud.esa.UrlObservation("default",
///     sdk_type="automatic",
///     site_id=default_site.id,
///     url="terraform.cn/a.html")
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
///         SiteName = "terraform.cn",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultUrlObservation = new AliCloud.Esa.UrlObservation("default", new()
///     {
///         SdkType = "automatic",
///         SiteId = defaultSite.Id,
///         Url = "terraform.cn/a.html",
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
/// 			SiteName:   pulumi.String("terraform.cn"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewUrlObservation(ctx, "default", &esa.UrlObservationArgs{
/// 			SdkType: pulumi.String("automatic"),
/// 			SiteId:  defaultSite.ID(),
/// 			Url:     pulumi.String("terraform.cn/a.html"),
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
/// import com.pulumi.alicloud.esa.UrlObservation;
/// import com.pulumi.alicloud.esa.UrlObservationArgs;
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
///             .siteName("terraform.cn")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultUrlObservation = new UrlObservation("defaultUrlObservation", UrlObservationArgs.builder()
///             .sdkType("automatic")
///             .siteId(defaultSite.id())
///             .url("terraform.cn/a.html")
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
///       siteName: terraform.cn
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultUrlObservation:
///     type: alicloud:esa:UrlObservation
///     name: default
///     properties:
///       sdkType: automatic
///       siteId: ${defaultSite.id}
///       url: terraform.cn/a.html
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
/// ESA Url Observation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/urlObservation:UrlObservation example <site_id>:<config_id>
/// ```
class UrlObservation extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;

  /// SDK integration mode. Value:
  late final pulumi.Output<String> sdkType;

  /// The site ID.
  late final pulumi.Output<String> siteId;

  /// The URL of the page to monitor.
  late final pulumi.Output<String> url;

  /// Creates a new [UrlObservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UrlObservation]. {@macro pulumi_esa_url_observation_url_observation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UrlObservation(
    String name, {
    UrlObservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/urlObservation:UrlObservation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    sdkType = registerOutput<String>('sdkType');
    siteId = registerOutput<String>('siteId');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [UrlObservation] resource's state with the given [name] and [id].
  static UrlObservation get(
    String name,
    pulumi.Input<String> id, {
    UrlObservationState? state,
  }) {
    return UrlObservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UrlObservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/urlObservation:UrlObservation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    sdkType = registerOutput<String>('sdkType');
    siteId = registerOutput<String>('siteId');
    url = registerOutput<String>('url');
  }
}
