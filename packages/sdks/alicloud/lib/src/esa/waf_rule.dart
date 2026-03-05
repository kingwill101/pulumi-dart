import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_args.dart';
import 'waf_rule_config.dart';
import 'waf_rule_shared.dart';
import 'waf_rule_state.dart';

/// Provides a ESA Waf Rule resource.
///
/// The detailed configuration of a Web Application Firewall (WAF) rule.
///
/// For information about ESA Waf Rule and how to use it, see [What is Waf Rule](https://next.api.alibabacloud.com/document/ESA/2024-09-10/BatchCreateWafRules).
///
/// &gt; **NOTE:** Available since v1.261.0.
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
/// const defaultWafRuleset = new alicloud.esa.WafRuleset("default", {
///     siteId: _default.then(_default => _default.sites?.[0]?.siteId),
///     phase: "http_custom",
///     siteVersion: 0,
/// });
/// const defaultWafRule = new alicloud.esa.WafRule("default", {
///     rulesetId: defaultWafRuleset.rulesetId,
///     phase: "http_custom",
///     config: {
///         status: "on",
///         action: "deny",
///         expression: "(http.host in {\"123.example.top\"})",
///         actions: {
///             response: {
///                 id: 0,
///                 code: 403,
///             },
///         },
///         name: "111",
///     },
///     siteVersion: 0,
///     siteId: _default.then(_default => _default.sites?.[0]?.siteId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_waf_ruleset = alicloud.esa.WafRuleset("default",
///     site_id=default.sites[0].site_id,
///     phase="http_custom",
///     site_version=0)
/// default_waf_rule = alicloud.esa.WafRule("default",
///     ruleset_id=default_waf_ruleset.ruleset_id,
///     phase="http_custom",
///     config={
///         "status": "on",
///         "action": "deny",
///         "expression": "(http.host in {\"123.example.top\"})",
///         "actions": {
///             "response": {
///                 "id": 0,
///                 "code": 403,
///             },
///         },
///         "name": "111",
///     },
///     site_version=0,
///     site_id=default.sites[0].site_id)
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
///     var defaultWafRuleset = new AliCloud.Esa.WafRuleset("default", new()
///     {
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.SiteId)),
///         Phase = "http_custom",
///         SiteVersion = 0,
///     });
///
///     var defaultWafRule = new AliCloud.Esa.WafRule("default", new()
///     {
///         RulesetId = defaultWafRuleset.RulesetId,
///         Phase = "http_custom",
///         Config = new AliCloud.Esa.Inputs.WafRuleConfigArgs
///         {
///             Status = "on",
///             Action = "deny",
///             Expression = "(http.host in {\"123.example.top\"})",
///             Actions = new AliCloud.Esa.Inputs.WafRuleConfigActionsArgs
///             {
///                 Response = new AliCloud.Esa.Inputs.WafRuleConfigActionsResponseArgs
///                 {
///                     Id = 0,
///                     Code = 403,
///                 },
///             },
///             Name = "111",
///         },
///         SiteVersion = 0,
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.SiteId)),
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
/// 		defaultWafRuleset, err := esa.NewWafRuleset(ctx, "default", &esa.WafRulesetArgs{
/// 			SiteId:      pulumi.Int(_default.Sites[0].SiteId),
/// 			Phase:       pulumi.String("http_custom"),
/// 			SiteVersion: pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewWafRule(ctx, "default", &esa.WafRuleArgs{
/// 			RulesetId: defaultWafRuleset.RulesetId,
/// 			Phase:     pulumi.String("http_custom"),
/// 			Config: &esa.WafRuleConfigArgs{
/// 				Status:     pulumi.String("on"),
/// 				Action:     pulumi.String("deny"),
/// 				Expression: pulumi.String("(http.host in {\"123.example.top\"})"),
/// 				Actions: &esa.WafRuleConfigActionsArgs{
/// 					Response: &esa.WafRuleConfigActionsResponseArgs{
/// 						Id:   pulumi.Int(0),
/// 						Code: pulumi.Int(403),
/// 					},
/// 				},
/// 				Name: pulumi.String("111"),
/// 			},
/// 			SiteVersion: pulumi.Int(0),
/// 			SiteId:      pulumi.Int(_default.Sites[0].SiteId),
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
/// import com.pulumi.alicloud.esa.WafRule;
/// import com.pulumi.alicloud.esa.WafRuleArgs;
/// import com.pulumi.alicloud.esa.inputs.WafRuleConfigArgs;
/// import com.pulumi.alicloud.esa.inputs.WafRuleConfigActionsArgs;
/// import com.pulumi.alicloud.esa.inputs.WafRuleConfigActionsResponseArgs;
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
///         var defaultWafRuleset = new WafRuleset("defaultWafRuleset", WafRulesetArgs.builder()
///             .siteId(default_.sites()[0].siteId())
///             .phase("http_custom")
///             .siteVersion(0)
///             .build());
///
///         var defaultWafRule = new WafRule("defaultWafRule", WafRuleArgs.builder()
///             .rulesetId(defaultWafRuleset.rulesetId())
///             .phase("http_custom")
///             .config(WafRuleConfigArgs.builder()
///                 .status("on")
///                 .action("deny")
///                 .expression("(http.host in {\"123.example.top\"})")
///                 .actions(WafRuleConfigActionsArgs.builder()
///                     .response(WafRuleConfigActionsResponseArgs.builder()
///                         .id(0)
///                         .code(403)
///                         .build())
///                     .build())
///                 .name("111")
///                 .build())
///             .siteVersion(0)
///             .siteId(default_.sites()[0].siteId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultWafRuleset:
///     type: alicloud:esa:WafRuleset
///     name: default
///     properties:
///       siteId: ${default.sites[0].siteId}
///       phase: http_custom
///       siteVersion: '0'
///   defaultWafRule:
///     type: alicloud:esa:WafRule
///     name: default
///     properties:
///       rulesetId: ${defaultWafRuleset.rulesetId}
///       phase: http_custom
///       config:
///         status: on
///         action: deny
///         expression: (http.host in {"123.example.top"})
///         actions:
///           response:
///             id: '0'
///             code: '403'
///         name: '111'
///       siteVersion: '0'
///       siteId: ${default.sites[0].siteId}
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
/// ESA Waf Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/wafRule:WafRule example <site_id>:<waf_rule_id>
/// ```
class WafRule extends pulumi.CustomResource {
  /// The specific configuration of the WAF rule. See `config` below.
  late final pulumi.Output<WafRuleConfig?> config;

  /// The phase in which the WAF processes this rule.
  late final pulumi.Output<String> phase;

  /// The ID of the WAF ruleset, which can be obtained by calling the [ListWafRulesets](https://www.alibabacloud.com/help/en/doc-detail/2850233.html) operation.
  late final pulumi.Output<int?> rulesetId;
  late final pulumi.Output<WafRuleShared?> shared;

  /// The unique identifier of the website, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  late final pulumi.Output<String> siteId;
  late final pulumi.Output<int?> siteVersion;

  /// The unique identifier of the WAF rule.
  late final pulumi.Output<int> wafRuleId;

  /// Creates a new [WafRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafRule]. {@macro pulumi_esa_waf_rule_waf_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafRule(
    String name, {
    WafRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/wafRule:WafRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<WafRuleConfig?>(
      'config',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WafRuleConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    phase = registerOutput<String>('phase');
    rulesetId = registerOutput<int?>('rulesetId');
    shared = registerOutput<WafRuleShared?>(
      'shared',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WafRuleShared.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    wafRuleId = registerOutput<int>('wafRuleId');
  }

  /// Gets an existing [WafRule] resource's state with the given [name] and [id].
  static WafRule get(
    String name,
    pulumi.Input<String> id, {
    WafRuleState? state,
  }) {
    return WafRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WafRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/wafRule:WafRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<WafRuleConfig?>(
      'config',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WafRuleConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    phase = registerOutput<String>('phase');
    rulesetId = registerOutput<int?>('rulesetId');
    shared = registerOutput<WafRuleShared?>(
      'shared',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WafRuleShared.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    wafRuleId = registerOutput<int>('wafRuleId');
  }
}
