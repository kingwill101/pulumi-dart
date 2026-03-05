import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_args.dart';
import 'waf_rule_rate_limit.dart';
import 'waf_rule_state.dart';

/// Provides a Dcdn Waf Rule resource.
///
/// For information about Dcdn Waf Rule and how to use it, see [What is Waf Rule](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-batchcreatedcdnwafrules).
///
/// &gt; **NOTE:** Available since v1.201.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.dcdn.WafPolicy("example", {
///     defenseScene: "waf_group",
///     policyName: `${name}_${_default.result}`,
///     policyType: "custom",
///     status: "on",
/// });
/// const exampleWafRule = new alicloud.dcdn.WafRule("example", {
///     policyId: example.id,
///     ruleName: name,
///     conditions: [
///         {
///             key: "URI",
///             opValue: "ne",
///             values: "/login.php",
///         },
///         {
///             key: "Header",
///             subKey: "a",
///             opValue: "eq",
///             values: "b",
///         },
///     ],
///     status: "on",
///     action: "monitor",
///     rateLimit: {
///         target: "IP",
///         interval: 5,
///         threshold: 5,
///         ttl: 1800,
///         status: {
///             code: "200",
///             ratio: 60,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.dcdn.WafPolicy("example",
///     defense_scene="waf_group",
///     policy_name=f"{name}_{default['result']}",
///     policy_type="custom",
///     status="on")
/// example_waf_rule = alicloud.dcdn.WafRule("example",
///     policy_id=example.id,
///     rule_name=name,
///     conditions=[
///         {
///             "key": "URI",
///             "op_value": "ne",
///             "values": "/login.php",
///         },
///         {
///             "key": "Header",
///             "sub_key": "a",
///             "op_value": "eq",
///             "values": "b",
///         },
///     ],
///     status="on",
///     action="monitor",
///     rate_limit={
///         "target": "IP",
///         "interval": 5,
///         "threshold": 5,
///         "ttl": 1800,
///         "status": {
///             "code": "200",
///             "ratio": 60,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Dcdn.WafPolicy("example", new()
///     {
///         DefenseScene = "waf_group",
///         PolicyName = $"{name}_{@default.Result}",
///         PolicyType = "custom",
///         Status = "on",
///     });
///
///     var exampleWafRule = new AliCloud.Dcdn.WafRule("example", new()
///     {
///         PolicyId = example.Id,
///         RuleName = name,
///         Conditions = new[]
///         {
///             new AliCloud.Dcdn.Inputs.WafRuleConditionArgs
///             {
///                 Key = "URI",
///                 OpValue = "ne",
///                 Values = "/login.php",
///             },
///             new AliCloud.Dcdn.Inputs.WafRuleConditionArgs
///             {
///                 Key = "Header",
///                 SubKey = "a",
///                 OpValue = "eq",
///                 Values = "b",
///             },
///         },
///         Status = "on",
///         Action = "monitor",
///         RateLimit = new AliCloud.Dcdn.Inputs.WafRuleRateLimitArgs
///         {
///             Target = "IP",
///             Interval = 5,
///             Threshold = 5,
///             Ttl = 1800,
///             Status = new AliCloud.Dcdn.Inputs.WafRuleRateLimitStatusArgs
///             {
///                 Code = "200",
///                 Ratio = 60,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := dcdn.NewWafPolicy(ctx, "example", &dcdn.WafPolicyArgs{
/// 			DefenseScene: pulumi.String("waf_group"),
/// 			PolicyName:   pulumi.Sprintf("%v_%v", name, _default.Result),
/// 			PolicyType:   pulumi.String("custom"),
/// 			Status:       pulumi.String("on"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewWafRule(ctx, "example", &dcdn.WafRuleArgs{
/// 			PolicyId: example.ID(),
/// 			RuleName: pulumi.String(name),
/// 			Conditions: dcdn.WafRuleConditionArray{
/// 				&dcdn.WafRuleConditionArgs{
/// 					Key:     pulumi.String("URI"),
/// 					OpValue: pulumi.String("ne"),
/// 					Values:  pulumi.String("/login.php"),
/// 				},
/// 				&dcdn.WafRuleConditionArgs{
/// 					Key:     pulumi.String("Header"),
/// 					SubKey:  pulumi.String("a"),
/// 					OpValue: pulumi.String("eq"),
/// 					Values:  pulumi.String("b"),
/// 				},
/// 			},
/// 			Status: pulumi.String("on"),
/// 			Action: pulumi.String("monitor"),
/// 			RateLimit: &dcdn.WafRuleRateLimitArgs{
/// 				Target:    pulumi.String("IP"),
/// 				Interval:  pulumi.Int(5),
/// 				Threshold: pulumi.Int(5),
/// 				Ttl:       pulumi.Int(1800),
/// 				Status: &dcdn.WafRuleRateLimitStatusArgs{
/// 					Code:  pulumi.String("200"),
/// 					Ratio: pulumi.Int(60),
/// 				},
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.dcdn.WafPolicy;
/// import com.pulumi.alicloud.dcdn.WafPolicyArgs;
/// import com.pulumi.alicloud.dcdn.WafRule;
/// import com.pulumi.alicloud.dcdn.WafRuleArgs;
/// import com.pulumi.alicloud.dcdn.inputs.WafRuleConditionArgs;
/// import com.pulumi.alicloud.dcdn.inputs.WafRuleRateLimitArgs;
/// import com.pulumi.alicloud.dcdn.inputs.WafRuleRateLimitStatusArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new WafPolicy("example", WafPolicyArgs.builder()
///             .defenseScene("waf_group")
///             .policyName(String.format("%s_%s", name,default_.result()))
///             .policyType("custom")
///             .status("on")
///             .build());
///
///         var exampleWafRule = new WafRule("exampleWafRule", WafRuleArgs.builder()
///             .policyId(example.id())
///             .ruleName(name)
///             .conditions(
///                 WafRuleConditionArgs.builder()
///                     .key("URI")
///                     .opValue("ne")
///                     .values("/login.php")
///                     .build(),
///                 WafRuleConditionArgs.builder()
///                     .key("Header")
///                     .subKey("a")
///                     .opValue("eq")
///                     .values("b")
///                     .build())
///             .status("on")
///             .action("monitor")
///             .rateLimit(WafRuleRateLimitArgs.builder()
///                 .target("IP")
///                 .interval(5)
///                 .threshold(5)
///                 .ttl(1800)
///                 .status(WafRuleRateLimitStatusArgs.builder()
///                     .code("200")
///                     .ratio(60)
///                     .build())
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
///     default: tf_example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:dcdn:WafPolicy
///     properties:
///       defenseScene: waf_group
///       policyName: ${name}_${default.result}
///       policyType: custom
///       status: on
///   exampleWafRule:
///     type: alicloud:dcdn:WafRule
///     name: example
///     properties:
///       policyId: ${example.id}
///       ruleName: ${name}
///       conditions:
///         - key: URI
///           opValue: ne
///           values: /login.php
///         - key: Header
///           subKey: a
///           opValue: eq
///           values: b
///       status: on
///       action: monitor
///       rateLimit:
///         target: IP
///         interval: '5'
///         threshold: '5'
///         ttl: '1800'
///         status:
///           code: '200'
///           ratio: '60'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Dcdn Waf Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/wafRule:WafRule example <id>
/// ```
class WafRule extends pulumi.CustomResource {
  /// Specifies the action of the rule. Valid values: `block`, `monitor`, `js`, `deny`.
  late final pulumi.Output<String?> action;
  /// Specifies whether to enable rate limiting. Valid values: `on` and `off`. **NOTE:** This parameter is required when policy is of type `custom_acl`.
  late final pulumi.Output<String> ccStatus;
  /// The blocked regions in the Chinese mainland, separated by commas (,).
  late final pulumi.Output<String?> cnRegionList;
  /// Conditions that trigger the rule. See `conditions` below. **NOTE:** This parameter is required when policy is of type `custom_acl` or `whitelist`.
  late final pulumi.Output<List<Map<String, dynamic>>?> conditions;
  /// The type of protection policy. The following scenarios are supported:-waf_group:Web basic protection-custom_acl: Custom protection policy-whitelist: whitelist
  late final pulumi.Output<String> defenseScene;
  /// The effective scope of the rate limiting blacklist. If you set ccStatus to on, you must configure this parameter. Valid values: `rule` (takes effect for the current rule) and `service` (takes effect globally).
  late final pulumi.Output<String?> effect;
  /// Revised the time. The date format is based on ISO8601 notation and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.
  late final pulumi.Output<String> gmtModified;
  /// Blocked regions outside the Chinese mainland, separated by commas (,).
  late final pulumi.Output<String?> otherRegionList;
  /// The protection policy ID.
  late final pulumi.Output<String> policyId;
  /// The rules of rate limiting. If you set `cc_status` to on, you must configure this parameter. See `rate_limit` below.
  late final pulumi.Output<WafRuleRateLimit?> rateLimit;
  /// The regular expression.e, when waf_group appears in tags, this value can be filled in, and only one list of six digits in string format can appear with regultypes.
  late final pulumi.Output<List<String>?> regularRules;
  /// Regular rule type, when waf_group appears in tags, this value can be filled in, optional values:["sqli", "xss", "code_exec", "crlf", "lfileii", "rfileii", "webshell", "vvip", "other"]
  late final pulumi.Output<List<String>?> regularTypes;
  /// Filter by IP address.
  late final pulumi.Output<List<String>?> remoteAddrs;
  /// The name of the protection rule. The name can be up to 64 characters in length and can contain letters, digits, and underscores (_). **NOTE:** This parameter cannot be modified when policy is of type `region_block`.
  late final pulumi.Output<String> ruleName;
  /// The types of the protection policies.
  late final pulumi.Output<List<String>?> scenes;
  /// The status of the waf rule. Valid values: `on` and `off`. Default value: on.
  late final pulumi.Output<String> status;
  /// The id of the waf rule group. The default value is "1012". Multiple rules are separated by commas. **NOTE:** This parameter is valid only when policy is of type `waf_group`.
  late final pulumi.Output<String?> wafGroupIds;

  /// Creates a new [WafRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafRule]. {@macro pulumi_dcdn_waf_rule_waf_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafRule(
    String name, {
    WafRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/wafRule:WafRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    ccStatus = registerOutput<String>('ccStatus');
    cnRegionList = registerOutput<String?>('cnRegionList');
    conditions = registerOutput<List<Map<String, dynamic>>?>('conditions');
    defenseScene = registerOutput<String>('defenseScene');
    effect = registerOutput<String?>('effect');
    gmtModified = registerOutput<String>('gmtModified');
    otherRegionList = registerOutput<String?>('otherRegionList');
    policyId = registerOutput<String>('policyId');
    rateLimit = registerOutput<WafRuleRateLimit?>('rateLimit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WafRuleRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regularRules = registerOutput<List<String>?>('regularRules');
    regularTypes = registerOutput<List<String>?>('regularTypes');
    remoteAddrs = registerOutput<List<String>?>('remoteAddrs');
    ruleName = registerOutput<String>('ruleName');
    scenes = registerOutput<List<String>?>('scenes');
    status = registerOutput<String>('status');
    wafGroupIds = registerOutput<String?>('wafGroupIds');
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
          'alicloud:dcdn/wafRule:WafRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    ccStatus = registerOutput<String>('ccStatus');
    cnRegionList = registerOutput<String?>('cnRegionList');
    conditions = registerOutput<List<Map<String, dynamic>>?>('conditions');
    defenseScene = registerOutput<String>('defenseScene');
    effect = registerOutput<String?>('effect');
    gmtModified = registerOutput<String>('gmtModified');
    otherRegionList = registerOutput<String?>('otherRegionList');
    policyId = registerOutput<String>('policyId');
    rateLimit = registerOutput<WafRuleRateLimit?>('rateLimit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WafRuleRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regularRules = registerOutput<List<String>?>('regularRules');
    regularTypes = registerOutput<List<String>?>('regularTypes');
    remoteAddrs = registerOutput<List<String>?>('remoteAddrs');
    ruleName = registerOutput<String>('ruleName');
    scenes = registerOutput<List<String>?>('scenes');
    status = registerOutput<String>('status');
    wafGroupIds = registerOutput<String?>('wafGroupIds');
  }
}
