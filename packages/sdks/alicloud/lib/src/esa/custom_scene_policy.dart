import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_scene_policy_args.dart';
import 'custom_scene_policy_state.dart';

/// Provides a ESA Custom Scene Policy resource.
///
///
///
/// For information about ESA Custom Scene Policy and how to use it, see [What is Custom Scene Policy](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateCustomScenePolicy).
///
/// > **NOTE:** Available since v1.253.0.
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
/// const name = config.get("name") || "bcd58610.com";
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
/// const defaultCustomScenePolicy = new alicloud.esa.CustomScenePolicy("default", {
///     endTime: "2025-08-07T17:00:00Z",
///     createTime: "2025-07-07T17:00:00Z",
///     siteIds: defaultSite.id,
///     template: "promotion",
///     customScenePolicyName: "example-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "bcd58610.com"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name=name,
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS",
///     version_management=True)
/// default_custom_scene_policy = alicloud.esa.CustomScenePolicy("default",
///     end_time="2025-08-07T17:00:00Z",
///     create_time="2025-07-07T17:00:00Z",
///     site_ids=default_site.id,
///     template="promotion",
///     custom_scene_policy_name="example-policy")
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
///     var name = config.Get("name") ?? "bcd58610.com";
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
///     var defaultCustomScenePolicy = new AliCloud.Esa.CustomScenePolicy("default", new()
///     {
///         EndTime = "2025-08-07T17:00:00Z",
///         CreateTime = "2025-07-07T17:00:00Z",
///         SiteIds = defaultSite.Id,
///         Template = "promotion",
///         CustomScenePolicyName = "example-policy",
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
/// 		name := "bcd58610.com"
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
/// 		_, err = esa.NewCustomScenePolicy(ctx, "default", &esa.CustomScenePolicyArgs{
/// 			EndTime:               pulumi.String("2025-08-07T17:00:00Z"),
/// 			CreateTime:            pulumi.String("2025-07-07T17:00:00Z"),
/// 			SiteIds:               defaultSite.ID(),
/// 			Template:              pulumi.String("promotion"),
/// 			CustomScenePolicyName: pulumi.String("example-policy"),
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
/// import com.pulumi.alicloud.esa.CustomScenePolicy;
/// import com.pulumi.alicloud.esa.CustomScenePolicyArgs;
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
///         final var name = config.get("name").orElse("bcd58610.com");
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
///         var defaultCustomScenePolicy = new CustomScenePolicy("defaultCustomScenePolicy", CustomScenePolicyArgs.builder()
///             .endTime("2025-08-07T17:00:00Z")
///             .createTime("2025-07-07T17:00:00Z")
///             .siteIds(defaultSite.id())
///             .template("promotion")
///             .customScenePolicyName("example-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: bcd58610.com
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
///   defaultCustomScenePolicy:
///     type: alicloud:esa:CustomScenePolicy
///     name: default
///     properties:
///       endTime: 2025-08-07T17:00:00Z
///       createTime: 2025-07-07T17:00:00Z
///       siteIds: ${defaultSite.id}
///       template: promotion
///       customScenePolicyName: example-policy
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
/// ESA Custom Scene Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/customScenePolicy:CustomScenePolicy example <id>
/// ```
class CustomScenePolicy extends pulumi.CustomResource {
  /// The time when the policy takes effect.
  /// The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The policy name.
  late final pulumi.Output<String> customScenePolicyName;
  /// The time when the policy expires.
  /// The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> endTime;
  /// The IDs of websites associated.
  late final pulumi.Output<String> siteIds;
  /// Policy effective status. Valid values: `Disabled`, `Running`.
  late final pulumi.Output<String> status;
  /// The name of the policy template. Valid value:
  late final pulumi.Output<String> template;

  /// Creates a new [CustomScenePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomScenePolicy]. {@macro pulumi_esa_custom_scene_policy_custom_scene_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomScenePolicy(
    String name, {
    CustomScenePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/customScenePolicy:CustomScenePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customScenePolicyName = registerOutput<String>('customScenePolicyName');
    this.endTime = registerOutput<String>('endTime');
    this.siteIds = registerOutput<String>('siteIds');
    this.status = registerOutput<String>('status');
    this.template = registerOutput<String>('template');
  }

  /// Gets an existing [CustomScenePolicy] resource's state with the given [name] and [id].
  static CustomScenePolicy get(
    String name,
    pulumi.Input<String> id, {
    CustomScenePolicyState? state,
  }) {
    return CustomScenePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomScenePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/customScenePolicy:CustomScenePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customScenePolicyName = registerOutput<String>('customScenePolicyName');
    this.endTime = registerOutput<String>('endTime');
    this.siteIds = registerOutput<String>('siteIds');
    this.status = registerOutput<String>('status');
    this.template = registerOutput<String>('template');
  }
}
