import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_args.dart';
import 'version_state.dart';

/// Provides a ESA Version resource.
///
///
///
/// For information about ESA Version and how to use it, see [What is Version](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CloneVersion).
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
/// const name = config.get("name") || "bcd72239.com";
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: name,
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
///     versionManagement: true,
/// });
/// const defaultVersion = new alicloud.esa.Version("default", {
///     siteId: defaultSite.id,
///     description: "example",
///     originVersion: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "bcd72239.com"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name=name,
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS",
///     version_management=True)
/// default_version = alicloud.esa.Version("default",
///     site_id=default_site.id,
///     description="example",
///     origin_version=0)
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
///     var name = config.Get("name") ?? "bcd72239.com";
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = name,
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///         VersionManagement = true,
///     });
///
///     var defaultVersion = new AliCloud.Esa.Version("default", new()
///     {
///         SiteId = defaultSite.Id,
///         Description = "example",
///         OriginVersion = 0,
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
/// 		name := "bcd72239.com"
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
/// 			SiteName:          pulumi.String(name),
/// 			InstanceId:        pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:          pulumi.String("overseas"),
/// 			AccessType:        pulumi.String("NS"),
/// 			VersionManagement: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewVersion(ctx, "default", &esa.VersionArgs{
/// 			SiteId:        defaultSite.ID(),
/// 			Description:   pulumi.String("example"),
/// 			OriginVersion: pulumi.Int(0),
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
/// import com.pulumi.alicloud.esa.Version;
/// import com.pulumi.alicloud.esa.VersionArgs;
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
///         final var name = config.get("name").orElse("bcd72239.com");
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName(name)
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .versionManagement(true)
///             .build());
///
///         var defaultVersion = new Version("defaultVersion", VersionArgs.builder()
///             .siteId(defaultSite.id())
///             .description("example")
///             .originVersion(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: bcd72239.com
/// resources:
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: ${name}
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///       versionManagement: true
///   defaultVersion:
///     type: alicloud:esa:Version
///     name: default
///     properties:
///       siteId: ${defaultSite.id}
///       description: example
///       originVersion: '0'
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
/// ESA Site Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/version:Version example <site_id>:<site_version>
/// ```
class Version extends pulumi.CustomResource {
  /// The creation time. The date format follows ISO8601 notation and uses UTC time. The format is yyyy-MM-ddTHH:mm:ssZ.
  late final pulumi.Output<String> createTime;
  /// The Site version's description.
  late final pulumi.Output<String?> description;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int> originVersion;
  /// The site ID, which can be obtained by calling the ListSites API.
  late final pulumi.Output<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int> siteVersion;
  /// Site version status:：`online`.：`configuring`._faild`：`configure_faild`.
  late final pulumi.Output<String> status;

  /// Creates a new [Version].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Version]. {@macro pulumi_esa_version_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Version(
    String name, {
    VersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/version:Version',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.originVersion = registerOutput<int>('originVersion');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int>('siteVersion');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Version] resource's state with the given [name] and [id].
  static Version get(
    String name,
    pulumi.Input<String> id, {
    VersionState? state,
  }) {
    return Version._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Version._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/version:Version',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.originVersion = registerOutput<int>('originVersion');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int>('siteVersion');
    this.status = registerOutput<String>('status');
  }
}
