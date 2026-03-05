import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_ruleset_args.dart';
import 'waf_ruleset_state.dart';

/// Provides a ESA Waf Ruleset resource.
///
/// waf rule set.
///
/// For information about ESA Waf Ruleset and how to use it, see [What is Waf Ruleset](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateWafRuleset).
///
/// &gt; **NOTE:** Available since v1.260.0.
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
/// const defaultWafRuleset = new alicloud.esa.WafRuleset("default", {
///     siteId: _default.then(_default => _default.sites?.[0]?.siteId),
///     phase: "http_custom",
///     siteVersion: 0,
///     name: name,
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
/// default_waf_ruleset = alicloud.esa.WafRuleset("default",
///     site_id=default.sites[0].site_id,
///     phase="http_custom",
///     site_version=0,
///     name=name)
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
///     var defaultWafRuleset = new AliCloud.Esa.WafRuleset("default", new()
///     {
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.SiteId)),
///         Phase = "http_custom",
///         SiteVersion = 0,
///         Name = name,
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
/// 		_, err = esa.NewWafRuleset(ctx, "default", &esa.WafRulesetArgs{
/// 			SiteId:      pulumi.Int(_default.Sites[0].SiteId),
/// 			Phase:       pulumi.String("http_custom"),
/// 			SiteVersion: pulumi.Int(0),
/// 			Name:        pulumi.String(name),
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
/// import com.pulumi.alicloud.esa.WafRuleset;
/// import com.pulumi.alicloud.esa.WafRulesetArgs;
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
///         var defaultWafRuleset = new WafRuleset("defaultWafRuleset", WafRulesetArgs.builder()
///             .siteId(default_.sites()[0].siteId())
///             .phase("http_custom")
///             .siteVersion(0)
///             .name(name)
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
///   defaultWafRuleset:
///     type: alicloud:esa:WafRuleset
///     name: default
///     properties:
///       siteId: ${default.sites[0].siteId}
///       phase: http_custom
///       siteVersion: '0'
///       name: ${name}
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
/// ESA Waf Ruleset can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/wafRuleset:WafRuleset example <ruleset_id>:<site_id>
/// ```
class WafRuleset extends pulumi.CustomResource {
  /// The ruleset name.
  late final pulumi.Output<String> name;
  /// The WAF phase
  late final pulumi.Output<String> phase;
  /// waf rule set id
  late final pulumi.Output<int> rulesetId;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  late final pulumi.Output<String> siteId;
  late final pulumi.Output<int?> siteVersion;
  /// Rule Set Status
  late final pulumi.Output<String> status;

  /// Creates a new [WafRuleset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafRuleset]. {@macro pulumi_esa_waf_ruleset_waf_ruleset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafRuleset(
    String name, {
    WafRulesetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/wafRuleset:WafRuleset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    phase = registerOutput<String>('phase');
    rulesetId = registerOutput<int>('rulesetId');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [WafRuleset] resource's state with the given [name] and [id].
  static WafRuleset get(
    String name,
    pulumi.Input<String> id, {
    WafRulesetState? state,
  }) {
    return WafRuleset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WafRuleset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/wafRuleset:WafRuleset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    phase = registerOutput<String>('phase');
    rulesetId = registerOutput<int>('rulesetId');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    status = registerOutput<String>('status');
  }
}
