import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_transform_args.dart';

/// Provides a ESA Image Transform resource.
///
///
///
/// For information about ESA Image Transform and how to use it, see [What is Image Transform](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateImageTransform).
///
/// > **NOTE:** Available since v1.244.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "imagetransform.tf.com",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "domestic",
///     accessType: "NS",
/// });
/// const defaultImageTransform = new alicloud.esa.ImageTransform("default", {
///     rule: "http.host eq \"video.example.com\"",
///     siteVersion: 0,
///     ruleName: "rule_example",
///     siteId: defaultSite.id,
///     ruleEnable: "off",
///     enable: "off",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="imagetransform.tf.com",
///     instance_id=default.sites[0].instance_id,
///     coverage="domestic",
///     access_type="NS")
/// default_image_transform = alicloud.esa.ImageTransform("default",
///     rule="http.host eq \"video.example.com\"",
///     site_version=0,
///     rule_name="rule_example",
///     site_id=default_site.id,
///     rule_enable="off",
///     enable="off")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "imagetransform.tf.com",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "domestic",
///         AccessType = "NS",
///     });
///
///     var defaultImageTransform = new AliCloud.Esa.ImageTransform("default", new()
///     {
///         Rule = "http.host eq \"video.example.com\"",
///         SiteVersion = 0,
///         RuleName = "rule_example",
///         SiteId = defaultSite.Id,
///         RuleEnable = "off",
///         Enable = "off",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("imagetransform.tf.com"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("domestic"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewImageTransform(ctx, "default", &esa.ImageTransformArgs{
/// 			Rule:        pulumi.String("http.host eq \"video.example.com\""),
/// 			SiteVersion: pulumi.Int(0),
/// 			RuleName:    pulumi.String("rule_example"),
/// 			SiteId:      defaultSite.ID(),
/// 			RuleEnable:  pulumi.String("off"),
/// 			Enable:      pulumi.String("off"),
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
/// import com.pulumi.alicloud.esa.ImageTransform;
/// import com.pulumi.alicloud.esa.ImageTransformArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("imagetransform.tf.com")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("domestic")
///             .accessType("NS")
///             .build());
///
///         var defaultImageTransform = new ImageTransform("defaultImageTransform", ImageTransformArgs.builder()
///             .rule("http.host eq \"video.example.com\"")
///             .siteVersion(0)
///             .ruleName("rule_example")
///             .siteId(defaultSite.id())
///             .ruleEnable("off")
///             .enable("off")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: imagetransform.tf.com
///       instanceId: ${default.sites[0].instanceId}
///       coverage: domestic
///       accessType: NS
///   defaultImageTransform:
///     type: alicloud:esa:ImageTransform
///     name: default
///     properties:
///       rule: http.host eq "video.example.com"
///       siteVersion: '0'
///       ruleName: rule_example
///       siteId: ${defaultSite.id}
///       ruleEnable: off
///       enable: off
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
/// ESA Image Transform can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/imageTransform:ImageTransform example <site_id>:<config_id>
/// ```
class ImageTransform extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;
  /// Indicates whether the image transformations feature is enabled. Valid values:
  late final pulumi.Output<String?> enable;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;
  /// The site ID, which can be obtained by calling the ListSites API.
  late final pulumi.Output<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Creates a new [ImageTransform].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageTransform]. {@macro pulumi_esa_image_transform_image_transform_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageTransform(
    String name, {
    ImageTransformArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/imageTransform:ImageTransform',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<int>('configId');
    this.enable = registerOutput<String?>('enable');
    this.rule = registerOutput<String?>('rule');
    this.ruleEnable = registerOutput<String?>('ruleEnable');
    this.ruleName = registerOutput<String?>('ruleName');
    this.sequence = registerOutput<int>('sequence');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int?>('siteVersion');
  }
}
