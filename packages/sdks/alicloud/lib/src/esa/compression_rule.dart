import 'package:pulumi/pulumi.dart' as pulumi;
import 'compression_rule_args.dart';
import 'compression_rule_state.dart';

/// Provides a ESA Compression Rule resource.
///
///
///
/// For information about ESA Compression Rule and how to use it, see [What is Compression Rule](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateCompressionRule).
///
/// &gt; **NOTE:** Available since v1.244.0.
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
/// const example = new alicloud.esa.Site("example", {
///     siteName: "compression.example.com",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "domestic",
///     accessType: "NS",
/// });
/// const defaultCompressionRule = new alicloud.esa.CompressionRule("default", {
///     gzip: "off",
///     brotli: "off",
///     rule: "http.host eq \"video.example.com\"",
///     siteVersion: 0,
///     ruleName: "rule_example",
///     siteId: example.id,
///     zstd: "off",
///     ruleEnable: "off",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// example = alicloud.esa.Site("example",
///     site_name="compression.example.com",
///     instance_id=default.sites[0].instance_id,
///     coverage="domestic",
///     access_type="NS")
/// default_compression_rule = alicloud.esa.CompressionRule("default",
///     gzip="off",
///     brotli="off",
///     rule="http.host eq \"video.example.com\"",
///     site_version=0,
///     rule_name="rule_example",
///     site_id=example.id,
///     zstd="off",
///     rule_enable="off")
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
///     var example = new AliCloud.Esa.Site("example", new()
///     {
///         SiteName = "compression.example.com",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "domestic",
///         AccessType = "NS",
///     });
///
///     var defaultCompressionRule = new AliCloud.Esa.CompressionRule("default", new()
///     {
///         Gzip = "off",
///         Brotli = "off",
///         Rule = "http.host eq \"video.example.com\"",
///         SiteVersion = 0,
///         RuleName = "rule_example",
///         SiteId = example.Id,
///         Zstd = "off",
///         RuleEnable = "off",
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
/// 		example, err := esa.NewSite(ctx, "example", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("compression.example.com"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("domestic"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewCompressionRule(ctx, "default", &esa.CompressionRuleArgs{
/// 			Gzip:        pulumi.String("off"),
/// 			Brotli:      pulumi.String("off"),
/// 			Rule:        pulumi.String("http.host eq \"video.example.com\""),
/// 			SiteVersion: pulumi.Int(0),
/// 			RuleName:    pulumi.String("rule_example"),
/// 			SiteId:      example.ID(),
/// 			Zstd:        pulumi.String("off"),
/// 			RuleEnable:  pulumi.String("off"),
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
/// import com.pulumi.alicloud.esa.CompressionRule;
/// import com.pulumi.alicloud.esa.CompressionRuleArgs;
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
///         var example = new Site("example", SiteArgs.builder()
///             .siteName("compression.example.com")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("domestic")
///             .accessType("NS")
///             .build());
///
///         var defaultCompressionRule = new CompressionRule("defaultCompressionRule", CompressionRuleArgs.builder()
///             .gzip("off")
///             .brotli("off")
///             .rule("http.host eq \"video.example.com\"")
///             .siteVersion(0)
///             .ruleName("rule_example")
///             .siteId(example.id())
///             .zstd("off")
///             .ruleEnable("off")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:esa:Site
///     properties:
///       siteName: compression.example.com
///       instanceId: ${default.sites[0].instanceId}
///       coverage: domestic
///       accessType: NS
///   defaultCompressionRule:
///     type: alicloud:esa:CompressionRule
///     name: default
///     properties:
///       gzip: off
///       brotli: off
///       rule: http.host eq "video.example.com"
///       siteVersion: '0'
///       ruleName: rule_example
///       siteId: ${example.id}
///       zstd: off
///       ruleEnable: off
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
/// ESA Compression Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/compressionRule:CompressionRule example <site_id>:<config_id>
/// ```
class CompressionRule extends pulumi.CustomResource {
  /// Brotli compression. Value range:
  late final pulumi.Output<String?> brotli;
  /// Config Id
  late final pulumi.Output<int> configId;
  /// Gzip compression. Value range:
  late final pulumi.Output<String?> gzip;
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
  /// Zstd compression. Value range:
  late final pulumi.Output<String?> zstd;

  /// Creates a new [CompressionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompressionRule]. {@macro pulumi_esa_compression_rule_compression_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompressionRule(
    String name, {
    CompressionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/compressionRule:CompressionRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    brotli = registerOutput<String?>('brotli');
    configId = registerOutput<int>('configId');
    gzip = registerOutput<String?>('gzip');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    zstd = registerOutput<String?>('zstd');
  }

  /// Gets an existing [CompressionRule] resource's state with the given [name] and [id].
  static CompressionRule get(
    String name,
    pulumi.Input<String> id, {
    CompressionRuleState? state,
  }) {
    return CompressionRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CompressionRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/compressionRule:CompressionRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    brotli = registerOutput<String?>('brotli');
    configId = registerOutput<int>('configId');
    gzip = registerOutput<String?>('gzip');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    zstd = registerOutput<String?>('zstd');
  }
}
