import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_anti_brute_force_rules_args.dart';
import 'get_anti_brute_force_rules_result.dart';
import 'get_assets_args.dart';
import 'get_assets_result.dart';
import 'get_backup_policies_args.dart';
import 'get_backup_policies_result.dart';
import 'get_baseline_strategies_args.dart';
import 'get_baseline_strategies_result.dart';
import 'get_check_item_configs_args.dart';
import 'get_check_item_configs_result.dart';
import 'get_check_structures_args.dart';
import 'get_check_structures_result.dart';
import 'get_honey_pots_args.dart';
import 'get_honey_pots_result.dart';
import 'get_honeypot_images_args.dart';
import 'get_honeypot_images_result.dart';
import 'get_honeypot_nodes_args.dart';
import 'get_honeypot_nodes_result.dart';
import 'get_honeypot_presets_args.dart';
import 'get_honeypot_presets_result.dart';
import 'get_honeypot_probes_args.dart';
import 'get_honeypot_probes_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_log_shipper_args.dart';
import 'get_log_shipper_result.dart';
import 'get_vul_whitelists_args.dart';
import 'get_vul_whitelists_result.dart';
import 'get_web_lock_configs_args.dart';
import 'get_web_lock_configs_result.dart';

/// This data source provides Threat Detection Anti Brute Force Rule available to the user.[What is Anti Brute Force Rule](https://www.alibabacloud.com/help/en/security-center/latest/api-sas-2018-12-03-createantibruteforcerule)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "example_value";
/// const defaultAntiBruteForceRule = new alicloud.threatdetection.AntiBruteForceRule("default", {
///     antiBruteForceRuleName: name,
///     forbiddenTime: 360,
///     uuidLists: ["7567806c-4ec5-4597-9543-7c9543381a13"],
///     failCount: 80,
///     span: 10,
/// });
/// const _default = defaultAntiBruteForceRule.id.apply(id => alicloud.threatdetection.getAntiBruteForceRulesOutput({
///     ids: [id],
///     nameRegex: defaultAntiBruteForceRule.name,
/// }));
/// export const alicloudThreatDetectionAntiBruteForceRuleExampleId = _default.apply(_default => _default.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default_anti_brute_force_rule = alicloud.threatdetection.AntiBruteForceRule("default",
///     anti_brute_force_rule_name=name,
///     forbidden_time=360,
///     uuid_lists=["7567806c-4ec5-4597-9543-7c9543381a13"],
///     fail_count=80,
///     span=10)
/// default = default_anti_brute_force_rule.id.apply(lambda id: alicloud.threatdetection.get_anti_brute_force_rules_output(ids=[id],
///     name_regex=default_anti_brute_force_rule.name))
/// pulumi.export("alicloudThreatDetectionAntiBruteForceRuleExampleId", default.rules[0].id)
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
///     var name = config.Get("name") ?? "example_value";
///     var defaultAntiBruteForceRule = new AliCloud.ThreatDetection.AntiBruteForceRule("default", new()
///     {
///         AntiBruteForceRuleName = name,
///         ForbiddenTime = 360,
///         UuidLists = new[]
///         {
///             "7567806c-4ec5-4597-9543-7c9543381a13",
///         },
///         FailCount = 80,
///         Span = 10,
///     });
///
///     var @default = AliCloud.ThreatDetection.GetAntiBruteForceRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAntiBruteForceRule.Id,
///         },
///         NameRegex = defaultAntiBruteForceRule.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionAntiBruteForceRuleExampleId"] = @default.Apply(@default => @default.Apply(getAntiBruteForceRulesResult => getAntiBruteForceRulesResult.Rules[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "example_value";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultAntiBruteForceRule, err := threatdetection.NewAntiBruteForceRule(ctx, "default", &threatdetection.AntiBruteForceRuleArgs{
/// AntiBruteForceRuleName: pulumi.String(name),
/// ForbiddenTime: pulumi.Int(360),
/// UuidLists: pulumi.StringArray{
/// pulumi.String("7567806c-4ec5-4597-9543-7c9543381a13"),
/// },
/// FailCount: pulumi.Int(80),
/// Span: pulumi.Int(10),
/// })
/// if err != nil {
/// return err
/// }
/// _default := defaultAntiBruteForceRule.ID().ApplyT(func(id string) (threatdetection.GetAntiBruteForceRulesResult, error) {
/// return threatdetection.GetAntiBruteForceRulesResult(interface{}(threatdetection.GetAntiBruteForceRules(ctx, &threatdetection.GetAntiBruteForceRulesArgs{
/// Ids: []string{
/// id,
/// },
/// NameRegex: pulumi.StringRef(pulumi.StringRef(pulumi.String(defaultAntiBruteForceRule.Name))),
/// }, nil))), nil
/// }).(threatdetection.GetAntiBruteForceRulesResultOutput)
/// ctx.Export("alicloudThreatDetectionAntiBruteForceRuleExampleId", _default.ApplyT(func(_default threatdetection.GetAntiBruteForceRulesResult) (*string, error) {
/// return &default.Rules[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.threatdetection.AntiBruteForceRule;
/// import com.pulumi.alicloud.threatdetection.AntiBruteForceRuleArgs;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetAntiBruteForceRulesArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         var defaultAntiBruteForceRule = new AntiBruteForceRule("defaultAntiBruteForceRule", AntiBruteForceRuleArgs.builder()
///             .antiBruteForceRuleName(name)
///             .forbiddenTime(360)
///             .uuidLists("7567806c-4ec5-4597-9543-7c9543381a13")
///             .failCount(80)
///             .span(10)
///             .build());
///
///         final var default = defaultAntiBruteForceRule.id().applyValue(_id -> ThreatdetectionFunctions.getAntiBruteForceRules(GetAntiBruteForceRulesArgs.builder()
///             .ids(_id)
///             .nameRegex(defaultAntiBruteForceRule.name())
///             .build()));
///
///         ctx.export("alicloudThreatDetectionAntiBruteForceRuleExampleId", default_.applyValue(_default_ -> _default_.rules()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_value
/// resources:
///   defaultAntiBruteForceRule:
///     type: alicloud:threatdetection:AntiBruteForceRule
///     name: default
///     properties:
///       antiBruteForceRuleName: ${name}
///       forbiddenTime: 360
///       uuidLists:
///         - 7567806c-4ec5-4597-9543-7c9543381a13
///       failCount: 80
///       span: 10
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getAntiBruteForceRules
///       arguments:
///         ids:
///           - ${defaultAntiBruteForceRule.id}
///         nameRegex: ${defaultAntiBruteForceRule.name}
/// outputs:
///   alicloudThreatDetectionAntiBruteForceRuleExampleId: ${default.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_anti_brute_force_rules_get_anti_brute_force_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAntiBruteForceRulesResult> getAntiBruteForceRules(
  GetAntiBruteForceRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getAntiBruteForceRules:getAntiBruteForceRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAntiBruteForceRulesResult.fromMap(result);
}

/// This data source provides Threat Detection Asset available to the user.[What is Asset](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describecloudcenterinstances)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getAssets({});
/// export const alicloudThreatDetectionAssetExampleId = _default.then(_default => _default.assets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_assets()
/// pulumi.export("alicloudThreatDetectionAssetExampleId", default.assets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetAssets.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionAssetExampleId"] = @default.Apply(@default => @default.Apply(getAssetsResult => getAssetsResult.Assets[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetAssets(ctx, &threatdetection.GetAssetsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudThreatDetectionAssetExampleId", _default.Assets[0].Id)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetAssetsArgs;
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
///         final var default = ThreatdetectionFunctions.getAssets(GetAssetsArgs.builder()
///             .build());
///
///         ctx.export("alicloudThreatDetectionAssetExampleId", default_.assets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getAssets
///       arguments: {}
/// outputs:
///   alicloudThreatDetectionAssetExampleId: ${default.assets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_assets_get_assets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetsResult> getAssets(
  GetAssetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getAssets:getAssets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetsResult.fromMap(result);
}

/// This data source provides the Threat Detection Backup Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.195.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.threatdetection.getBackupPolicies({
///     ids: ["example_id"],
/// });
/// export const threatDetectionBackupPoliciesId1 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.threatdetection.getBackupPolicies({
///     nameRegex: "tf-example",
/// });
/// export const threatDetectionBackupPoliciesId2 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.threatdetection.get_backup_policies(ids=["example_id"])
/// pulumi.export("threatDetectionBackupPoliciesId1", ids.policies[0].id)
/// name_regex = alicloud.threatdetection.get_backup_policies(name_regex="tf-example")
/// pulumi.export("threatDetectionBackupPoliciesId2", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ThreatDetection.GetBackupPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.ThreatDetection.GetBackupPolicies.Invoke(new()
///     {
///         NameRegex = "tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["threatDetectionBackupPoliciesId1"] = ids.Apply(getBackupPoliciesResult => getBackupPoliciesResult.Policies[0]?.Id),
///         ["threatDetectionBackupPoliciesId2"] = nameRegex.Apply(getBackupPoliciesResult => getBackupPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := threatdetection.GetBackupPolicies(ctx, &threatdetection.GetBackupPoliciesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("threatDetectionBackupPoliciesId1", ids.Policies[0].Id)
/// 		nameRegex, err := threatdetection.GetBackupPolicies(ctx, &threatdetection.GetBackupPoliciesArgs{
/// 			NameRegex: pulumi.StringRef("tf-example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("threatDetectionBackupPoliciesId2", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetBackupPoliciesArgs;
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
///         final var ids = ThreatdetectionFunctions.getBackupPolicies(GetBackupPoliciesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("threatDetectionBackupPoliciesId1", ids.policies()[0].id());
///         final var nameRegex = ThreatdetectionFunctions.getBackupPolicies(GetBackupPoliciesArgs.builder()
///             .nameRegex("tf-example")
///             .build());
///
///         ctx.export("threatDetectionBackupPoliciesId2", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:threatdetection:getBackupPolicies
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:threatdetection:getBackupPolicies
///       arguments:
///         nameRegex: tf-example
/// outputs:
///   threatDetectionBackupPoliciesId1: ${ids.policies[0].id}
///   threatDetectionBackupPoliciesId2: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_backup_policies_get_backup_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPoliciesResult> getBackupPolicies(
  GetBackupPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getBackupPolicies:getBackupPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPoliciesResult.fromMap(result);
}

/// This data source provides Threat Detection Baseline Strategy available to the user.[What is Baseline Strategy](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describestrategy)
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultBaselineStrategy = new alicloud.threatdetection.BaselineStrategy("default", {
///     customType: "custom",
///     endTime: "08:00:00",
///     baselineStrategyName: "apispec",
///     cycleDays: 3,
///     targetType: "groupId",
///     startTime: "05:00:00",
///     riskSubTypeName: "hc_exploit_redis",
/// });
/// const _default = defaultBaselineStrategy.id.apply(id => alicloud.threatdetection.getBaselineStrategiesOutput({
///     ids: [id],
///     nameRegex: defaultBaselineStrategy.name,
///     customType: "custom",
/// }));
/// export const alicloudThreatDetectionBaselineStrategyExampleId = defaultAlicloudThreatDetectionBaselineStrategys.strategys[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_baseline_strategy = alicloud.threatdetection.BaselineStrategy("default",
///     custom_type="custom",
///     end_time="08:00:00",
///     baseline_strategy_name="apispec",
///     cycle_days=3,
///     target_type="groupId",
///     start_time="05:00:00",
///     risk_sub_type_name="hc_exploit_redis")
/// default = default_baseline_strategy.id.apply(lambda id: alicloud.threatdetection.get_baseline_strategies_output(ids=[id],
///     name_regex=default_baseline_strategy.name,
///     custom_type="custom"))
/// pulumi.export("alicloudThreatDetectionBaselineStrategyExampleId", default_alicloud_threat_detection_baseline_strategys["strategys"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultBaselineStrategy = new AliCloud.ThreatDetection.BaselineStrategy("default", new()
///     {
///         CustomType = "custom",
///         EndTime = "08:00:00",
///         BaselineStrategyName = "apispec",
///         CycleDays = 3,
///         TargetType = "groupId",
///         StartTime = "05:00:00",
///         RiskSubTypeName = "hc_exploit_redis",
///     });
///
///     var @default = AliCloud.ThreatDetection.GetBaselineStrategies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultBaselineStrategy.Id,
///         },
///         NameRegex = defaultBaselineStrategy.Name,
///         CustomType = "custom",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionBaselineStrategyExampleId"] = defaultAlicloudThreatDetectionBaselineStrategys.Strategys[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultBaselineStrategy, err := threatdetection.NewBaselineStrategy(ctx, "default", &threatdetection.BaselineStrategyArgs{
/// 			CustomType:           pulumi.String("custom"),
/// 			EndTime:              pulumi.String("08:00:00"),
/// 			BaselineStrategyName: pulumi.String("apispec"),
/// 			CycleDays:            pulumi.Int(3),
/// 			TargetType:           pulumi.String("groupId"),
/// 			StartTime:            pulumi.String("05:00:00"),
/// 			RiskSubTypeName:      pulumi.String("hc_exploit_redis"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = defaultBaselineStrategy.ID().ApplyT(func(id string) (threatdetection.GetBaselineStrategiesResult, error) {
/// 			return threatdetection.GetBaselineStrategiesResult(interface{}(threatdetection.GetBaselineStrategies(ctx, &threatdetection.GetBaselineStrategiesArgs{
/// 				Ids: []string{
/// 					id,
/// 				},
/// 				NameRegex:  pulumi.StringRef(pulumi.StringRef(pulumi.String(defaultBaselineStrategy.Name))),
/// 				CustomType: pulumi.StringRef(pulumi.StringRef("custom")),
/// 			}, nil))), nil
/// 		}).(threatdetection.GetBaselineStrategiesResultOutput)
/// 		ctx.Export("alicloudThreatDetectionBaselineStrategyExampleId", defaultAlicloudThreatDetectionBaselineStrategys.Strategys[0].Id)
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
/// import com.pulumi.alicloud.threatdetection.BaselineStrategy;
/// import com.pulumi.alicloud.threatdetection.BaselineStrategyArgs;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetBaselineStrategiesArgs;
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
///         var defaultBaselineStrategy = new BaselineStrategy("defaultBaselineStrategy", BaselineStrategyArgs.builder()
///             .customType("custom")
///             .endTime("08:00:00")
///             .baselineStrategyName("apispec")
///             .cycleDays(3)
///             .targetType("groupId")
///             .startTime("05:00:00")
///             .riskSubTypeName("hc_exploit_redis")
///             .build());
///
///         final var default = defaultBaselineStrategy.id().applyValue(_id -> ThreatdetectionFunctions.getBaselineStrategies(GetBaselineStrategiesArgs.builder()
///             .ids(_id)
///             .nameRegex(defaultBaselineStrategy.name())
///             .customType("custom")
///             .build()));
///
///         ctx.export("alicloudThreatDetectionBaselineStrategyExampleId", defaultAlicloudThreatDetectionBaselineStrategys.strategys()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultBaselineStrategy:
///     type: alicloud:threatdetection:BaselineStrategy
///     name: default
///     properties:
///       customType: custom
///       endTime: 08:00:00
///       baselineStrategyName: apispec
///       cycleDays: 3
///       targetType: groupId
///       startTime: 05:00:00
///       riskSubTypeName: hc_exploit_redis
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getBaselineStrategies
///       arguments:
///         ids:
///           - ${defaultBaselineStrategy.id}
///         nameRegex: ${defaultBaselineStrategy.name}
///         customType: custom
/// outputs:
///   alicloudThreatDetectionBaselineStrategyExampleId: ${defaultAlicloudThreatDetectionBaselineStrategys.strategys[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_baseline_strategies_get_baseline_strategies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBaselineStrategiesResult> getBaselineStrategies(
  GetBaselineStrategiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getBaselineStrategies:getBaselineStrategies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBaselineStrategiesResult.fromMap(result);
}

/// This data source provides Threat Detection Check Item Config available to the user.[What is Check Item Config](https://next.api.alibabacloud.com/document/Sas/2018-12-03/ListCheckItem)
///
/// &gt; **NOTE:** Available since v1.267.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getCheckItemConfigs({});
/// export const alicloudThreatDetectionCheckItemConfigExampleCheckId = _default.then(_default => _default.configs?.[0]?.checkId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_check_item_configs()
/// pulumi.export("alicloudThreatDetectionCheckItemConfigExampleCheckId", default.configs[0].check_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetCheckItemConfigs.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionCheckItemConfigExampleCheckId"] = @default.Apply(@default => @default.Apply(getCheckItemConfigsResult => getCheckItemConfigsResult.Configs[0]?.CheckId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetCheckItemConfigs(ctx, &threatdetection.GetCheckItemConfigsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudThreatDetectionCheckItemConfigExampleCheckId", _default.Configs[0].CheckId)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetCheckItemConfigsArgs;
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
///         final var default = ThreatdetectionFunctions.getCheckItemConfigs(GetCheckItemConfigsArgs.builder()
///             .build());
///
///         ctx.export("alicloudThreatDetectionCheckItemConfigExampleCheckId", default_.configs()[0].checkId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getCheckItemConfigs
///       arguments: {}
/// outputs:
///   alicloudThreatDetectionCheckItemConfigExampleCheckId: ${default.configs[0].checkId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_check_item_configs_get_check_item_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCheckItemConfigsResult> getCheckItemConfigs(
  GetCheckItemConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getCheckItemConfigs:getCheckItemConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCheckItemConfigsResult.fromMap(result);
}

/// This data source provides Threat Detection Check Structure available to the user.[What is Check Structure](https://next.api.alibabacloud.com/document/Sas/2018-12-03/GetCheckStructure)
///
/// &gt; **NOTE:** Available since v1.267.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getCheckStructures({});
/// export const alicloudThreatDetectionCheckStructureExampleStandardType = _default.then(_default => _default.structures?.[0]?.standardType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_check_structures()
/// pulumi.export("alicloudThreatDetectionCheckStructureExampleStandardType", default.structures[0].standard_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetCheckStructures.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionCheckStructureExampleStandardType"] = @default.Apply(@default => @default.Apply(getCheckStructuresResult => getCheckStructuresResult.Structures[0]?.StandardType)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetCheckStructures(ctx, &threatdetection.GetCheckStructuresArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudThreatDetectionCheckStructureExampleStandardType", _default.Structures[0].StandardType)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetCheckStructuresArgs;
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
///         final var default = ThreatdetectionFunctions.getCheckStructures(GetCheckStructuresArgs.builder()
///             .build());
///
///         ctx.export("alicloudThreatDetectionCheckStructureExampleStandardType", default_.structures()[0].standardType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getCheckStructures
///       arguments: {}
/// outputs:
///   alicloudThreatDetectionCheckStructureExampleStandardType: ${default.structures[0].standardType}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_check_structures_get_check_structures_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCheckStructuresResult> getCheckStructures(
  GetCheckStructuresArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getCheckStructures:getCheckStructures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCheckStructuresResult.fromMap(result);
}

/// This data source provides Threat Detection Honey Pot available to the user.[What is Honey Pot](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypot)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getHoneyPots({
///     ids: ["xxxx"],
///     honeypotName: "tf-example",
///     nodeId: "a44e1ab3-6945-444c-889d-5bacee7056e8",
/// });
/// export const alicloudThreatDetectionHoneyPotExampleId = _default.then(_default => _default.pots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_honey_pots(ids=["xxxx"],
///     honeypot_name="tf-example",
///     node_id="a44e1ab3-6945-444c-889d-5bacee7056e8")
/// pulumi.export("alicloudThreatDetectionHoneyPotExampleId", default.pots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetHoneyPots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "xxxx",
///         },
///         HoneypotName = "tf-example",
///         NodeId = "a44e1ab3-6945-444c-889d-5bacee7056e8",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionHoneyPotExampleId"] = @default.Apply(@default => @default.Apply(getHoneyPotsResult => getHoneyPotsResult.Pots[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetHoneyPots(ctx, &threatdetection.GetHoneyPotsArgs{
/// 			Ids: []string{
/// 				"xxxx",
/// 			},
/// 			HoneypotName: pulumi.StringRef("tf-example"),
/// 			NodeId:       pulumi.StringRef("a44e1ab3-6945-444c-889d-5bacee7056e8"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudThreatDetectionHoneyPotExampleId", _default.Pots[0].Id)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneyPotsArgs;
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
///         final var default = ThreatdetectionFunctions.getHoneyPots(GetHoneyPotsArgs.builder()
///             .ids("xxxx")
///             .honeypotName("tf-example")
///             .nodeId("a44e1ab3-6945-444c-889d-5bacee7056e8")
///             .build());
///
///         ctx.export("alicloudThreatDetectionHoneyPotExampleId", default_.pots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getHoneyPots
///       arguments:
///         ids:
///           - xxxx
///         honeypotName: tf-example
///         nodeId: a44e1ab3-6945-444c-889d-5bacee7056e8
/// outputs:
///   alicloudThreatDetectionHoneyPotExampleId: ${default.pots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_honey_pots_get_honey_pots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHoneyPotsResult> getHoneyPots(
  GetHoneyPotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getHoneyPots:getHoneyPots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHoneyPotsResult.fromMap(result);
}

/// This data source provides Threat Detection Honeypot Image available to the user.[What is Honeypot Image](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-listavailablehoneypot)
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getHoneypotImages({
///     ids: ["sha256:02882320c9a55303410127c5dc4ae2dc470150f9d7f2483102d994f5e5f4d9df"],
///     nameRegex: "^meta",
/// });
/// export const alicloudThreatDetectionHoneypotImageExampleId = _default.then(_default => _default.images?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_honeypot_images(ids=["sha256:02882320c9a55303410127c5dc4ae2dc470150f9d7f2483102d994f5e5f4d9df"],
///     name_regex="^meta")
/// pulumi.export("alicloudThreatDetectionHoneypotImageExampleId", default.images[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetHoneypotImages.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "sha256:02882320c9a55303410127c5dc4ae2dc470150f9d7f2483102d994f5e5f4d9df",
///         },
///         NameRegex = "^meta",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionHoneypotImageExampleId"] = @default.Apply(@default => @default.Apply(getHoneypotImagesResult => getHoneypotImagesResult.Images[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetHoneypotImages(ctx, &threatdetection.GetHoneypotImagesArgs{
/// 			Ids: []string{
/// 				"sha256:02882320c9a55303410127c5dc4ae2dc470150f9d7f2483102d994f5e5f4d9df",
/// 			},
/// 			NameRegex: pulumi.StringRef("^meta"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudThreatDetectionHoneypotImageExampleId", _default.Images[0].Id)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneypotImagesArgs;
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
///         final var default = ThreatdetectionFunctions.getHoneypotImages(GetHoneypotImagesArgs.builder()
///             .ids("sha256:02882320c9a55303410127c5dc4ae2dc470150f9d7f2483102d994f5e5f4d9df")
///             .nameRegex("^meta")
///             .build());
///
///         ctx.export("alicloudThreatDetectionHoneypotImageExampleId", default_.images()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getHoneypotImages
///       arguments:
///         ids:
///           - sha256:02882320c9a55303410127c5dc4ae2dc470150f9d7f2483102d994f5e5f4d9df
///         nameRegex: ^meta
/// outputs:
///   alicloudThreatDetectionHoneypotImageExampleId: ${default.images[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_honeypot_images_get_honeypot_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHoneypotImagesResult> getHoneypotImages(
  GetHoneypotImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getHoneypotImages:getHoneypotImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHoneypotImagesResult.fromMap(result);
}

/// This data source provides Threat Detection Honeypot Node available to the user.[What is Honeypot Node](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypotnode)
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getHoneypotNodes({
///     ids: [defaultAlicloudThreatDetectionHoneypotNode.id],
/// });
/// export const alicloudThreatDetectionHoneypotNodeExampleId = _default.then(_default => _default.nodes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_honeypot_nodes(ids=[default_alicloud_threat_detection_honeypot_node["id"]])
/// pulumi.export("alicloudThreatDetectionHoneypotNodeExampleId", default.nodes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetHoneypotNodes.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudThreatDetectionHoneypotNode.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionHoneypotNodeExampleId"] = @default.Apply(@default => @default.Apply(getHoneypotNodesResult => getHoneypotNodesResult.Nodes[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := threatdetection.GetHoneypotNodes(ctx, &threatdetection.GetHoneypotNodesArgs{
/// Ids: interface{}{
/// defaultAlicloudThreatDetectionHoneypotNode.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudThreatDetectionHoneypotNodeExampleId", _default.Nodes[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneypotNodesArgs;
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
///         final var default = ThreatdetectionFunctions.getHoneypotNodes(GetHoneypotNodesArgs.builder()
///             .ids(defaultAlicloudThreatDetectionHoneypotNode.id())
///             .build());
///
///         ctx.export("alicloudThreatDetectionHoneypotNodeExampleId", default_.nodes()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getHoneypotNodes
///       arguments:
///         ids:
///           - ${defaultAlicloudThreatDetectionHoneypotNode.id}
/// outputs:
///   alicloudThreatDetectionHoneypotNodeExampleId: ${default.nodes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_honeypot_nodes_get_honeypot_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHoneypotNodesResult> getHoneypotNodes(
  GetHoneypotNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getHoneypotNodes:getHoneypotNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHoneypotNodesResult.fromMap(result);
}

/// This data source provides Threat Detection Honeypot Preset available to the user.
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getHoneypotPresets({
///     ids: [defaultAlicloudThreatDetectionHoneypotPreset.id],
///     honeypotImageName: "shiro",
///     nodeId: "example_value",
///     presetName: "apiapec_test",
/// });
/// export const alicloudThreatDetectionHoneypotPresetExampleId = _default.then(_default => _default.presets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_honeypot_presets(ids=[default_alicloud_threat_detection_honeypot_preset["id"]],
///     honeypot_image_name="shiro",
///     node_id="example_value",
///     preset_name="apiapec_test")
/// pulumi.export("alicloudThreatDetectionHoneypotPresetExampleId", default.presets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetHoneypotPresets.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudThreatDetectionHoneypotPreset.Id,
///         },
///         HoneypotImageName = "shiro",
///         NodeId = "example_value",
///         PresetName = "apiapec_test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionHoneypotPresetExampleId"] = @default.Apply(@default => @default.Apply(getHoneypotPresetsResult => getHoneypotPresetsResult.Presets[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := threatdetection.GetHoneypotPresets(ctx, &threatdetection.GetHoneypotPresetsArgs{
/// Ids: interface{}{
/// defaultAlicloudThreatDetectionHoneypotPreset.Id,
/// },
/// HoneypotImageName: pulumi.StringRef("shiro"),
/// NodeId: pulumi.StringRef("example_value"),
/// PresetName: pulumi.StringRef("apiapec_test"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudThreatDetectionHoneypotPresetExampleId", _default.Presets[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneypotPresetsArgs;
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
///         final var default = ThreatdetectionFunctions.getHoneypotPresets(GetHoneypotPresetsArgs.builder()
///             .ids(defaultAlicloudThreatDetectionHoneypotPreset.id())
///             .honeypotImageName("shiro")
///             .nodeId("example_value")
///             .presetName("apiapec_test")
///             .build());
///
///         ctx.export("alicloudThreatDetectionHoneypotPresetExampleId", default_.presets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getHoneypotPresets
///       arguments:
///         ids:
///           - ${defaultAlicloudThreatDetectionHoneypotPreset.id}
///         honeypotImageName: shiro
///         nodeId: example_value
///         presetName: apiapec_test
/// outputs:
///   alicloudThreatDetectionHoneypotPresetExampleId: ${default.presets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_honeypot_presets_get_honeypot_presets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHoneypotPresetsResult> getHoneypotPresets(
  GetHoneypotPresetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getHoneypotPresets:getHoneypotPresets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHoneypotPresetsResult.fromMap(result);
}

/// This data source provides Threat Detection Honeypot Probe available to the user.[What is Honeypot Probe](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypotprobe)
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-testAccThreatDetectionHoneypotProbe";
/// const defaultHoneypotProbe = new alicloud.threatdetection.HoneypotProbe("default", {
///     uuid: "e52c7872-29d1-4aa1-9908-0299abd53606",
///     probeType: "host_probe",
///     controlNodeId: "e1397077-4941-4b14-b533-ca2bdebd00a3",
///     ping: true,
///     honeypotBindLists: [{
///         bindPortLists: [{
///             startPort: 80,
///             endPort: 80,
///         }],
///         honeypotId: "4925bf9784de992ecd017ad051528a03b3927ef814eeff76c2ebb3ab9a84bf05",
///     }],
///     displayName: name,
///     arp: true,
/// });
/// const _default = alicloud.threatdetection.getHoneypotProbesOutput({
///     ids: [defaultHoneypotProbe.id],
///     displayName: name,
///     probeType: "host_probe",
///     enableDetails: true,
/// });
/// export const alicloudThreatDetectionHoneypotProbeExampleId = _default.apply(_default => _default.probes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testAccThreatDetectionHoneypotProbe"
/// default_honeypot_probe = alicloud.threatdetection.HoneypotProbe("default",
///     uuid="e52c7872-29d1-4aa1-9908-0299abd53606",
///     probe_type="host_probe",
///     control_node_id="e1397077-4941-4b14-b533-ca2bdebd00a3",
///     ping=True,
///     honeypot_bind_lists=[{
///         "bind_port_lists": [{
///             "start_port": 80,
///             "end_port": 80,
///         }],
///         "honeypot_id": "4925bf9784de992ecd017ad051528a03b3927ef814eeff76c2ebb3ab9a84bf05",
///     }],
///     display_name=name,
///     arp=True)
/// default = alicloud.threatdetection.get_honeypot_probes_output(ids=[default_honeypot_probe.id],
///     display_name=name,
///     probe_type="host_probe",
///     enable_details=True)
/// pulumi.export("alicloudThreatDetectionHoneypotProbeExampleId", default.probes[0].id)
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
///     var name = config.Get("name") ?? "tf-testAccThreatDetectionHoneypotProbe";
///     var defaultHoneypotProbe = new AliCloud.ThreatDetection.HoneypotProbe("default", new()
///     {
///         Uuid = "e52c7872-29d1-4aa1-9908-0299abd53606",
///         ProbeType = "host_probe",
///         ControlNodeId = "e1397077-4941-4b14-b533-ca2bdebd00a3",
///         Ping = true,
///         HoneypotBindLists = new[]
///         {
///             new AliCloud.ThreatDetection.Inputs.HoneypotProbeHoneypotBindListArgs
///             {
///                 BindPortLists = new[]
///                 {
///                     new AliCloud.ThreatDetection.Inputs.HoneypotProbeHoneypotBindListBindPortListArgs
///                     {
///                         StartPort = 80,
///                         EndPort = 80,
///                     },
///                 },
///                 HoneypotId = "4925bf9784de992ecd017ad051528a03b3927ef814eeff76c2ebb3ab9a84bf05",
///             },
///         },
///         DisplayName = name,
///         Arp = true,
///     });
///
///     var @default = AliCloud.ThreatDetection.GetHoneypotProbes.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultHoneypotProbe.Id,
///         },
///         DisplayName = name,
///         ProbeType = "host_probe",
///         EnableDetails = true,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionHoneypotProbeExampleId"] = @default.Apply(@default => @default.Apply(getHoneypotProbesResult => getHoneypotProbesResult.Probes[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf-testAccThreatDetectionHoneypotProbe";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultHoneypotProbe, err := threatdetection.NewHoneypotProbe(ctx, "default", &threatdetection.HoneypotProbeArgs{
/// Uuid: pulumi.String("e52c7872-29d1-4aa1-9908-0299abd53606"),
/// ProbeType: pulumi.String("host_probe"),
/// ControlNodeId: pulumi.String("e1397077-4941-4b14-b533-ca2bdebd00a3"),
/// Ping: pulumi.Bool(true),
/// HoneypotBindLists: threatdetection.HoneypotProbeHoneypotBindListArray{
/// &threatdetection.HoneypotProbeHoneypotBindListArgs{
/// BindPortLists: threatdetection.HoneypotProbeHoneypotBindListBindPortListArray{
/// &threatdetection.HoneypotProbeHoneypotBindListBindPortListArgs{
/// StartPort: pulumi.Int(80),
/// EndPort: pulumi.Int(80),
/// },
/// },
/// HoneypotId: pulumi.String("4925bf9784de992ecd017ad051528a03b3927ef814eeff76c2ebb3ab9a84bf05"),
/// },
/// },
/// DisplayName: pulumi.String(name),
/// Arp: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _default := threatdetection.GetHoneypotProbesOutput(ctx, threatdetection.GetHoneypotProbesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultHoneypotProbe.ID(),
/// },
/// DisplayName: pulumi.String(name),
/// ProbeType: pulumi.String("host_probe"),
/// EnableDetails: pulumi.Bool(true),
/// }, nil);
/// ctx.Export("alicloudThreatDetectionHoneypotProbeExampleId", _default.ApplyT(func(_default threatdetection.GetHoneypotProbesResult) (*string, error) {
/// return &default.Probes[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.threatdetection.HoneypotProbe;
/// import com.pulumi.alicloud.threatdetection.HoneypotProbeArgs;
/// import com.pulumi.alicloud.threatdetection.inputs.HoneypotProbeHoneypotBindListArgs;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneypotProbesArgs;
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
///         final var name = config.get("name").orElse("tf-testAccThreatDetectionHoneypotProbe");
///         var defaultHoneypotProbe = new HoneypotProbe("defaultHoneypotProbe", HoneypotProbeArgs.builder()
///             .uuid("e52c7872-29d1-4aa1-9908-0299abd53606")
///             .probeType("host_probe")
///             .controlNodeId("e1397077-4941-4b14-b533-ca2bdebd00a3")
///             .ping(true)
///             .honeypotBindLists(HoneypotProbeHoneypotBindListArgs.builder()
///                 .bindPortLists(HoneypotProbeHoneypotBindListBindPortListArgs.builder()
///                     .startPort(80)
///                     .endPort(80)
///                     .build())
///                 .honeypotId("4925bf9784de992ecd017ad051528a03b3927ef814eeff76c2ebb3ab9a84bf05")
///                 .build())
///             .displayName(name)
///             .arp(true)
///             .build());
///
///         final var default = ThreatdetectionFunctions.getHoneypotProbes(GetHoneypotProbesArgs.builder()
///             .ids(defaultHoneypotProbe.id())
///             .displayName(name)
///             .probeType("host_probe")
///             .enableDetails(true)
///             .build());
///
///         ctx.export("alicloudThreatDetectionHoneypotProbeExampleId", default_.applyValue(_default_ -> _default_.probes()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testAccThreatDetectionHoneypotProbe
/// resources:
///   defaultHoneypotProbe:
///     type: alicloud:threatdetection:HoneypotProbe
///     name: default
///     properties:
///       uuid: e52c7872-29d1-4aa1-9908-0299abd53606
///       probeType: host_probe
///       controlNodeId: e1397077-4941-4b14-b533-ca2bdebd00a3
///       ping: true
///       honeypotBindLists:
///         - bindPortLists:
///             - startPort: 80
///               endPort: 80
///           honeypotId: 4925bf9784de992ecd017ad051528a03b3927ef814eeff76c2ebb3ab9a84bf05
///       displayName: ${name}
///       arp: true
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getHoneypotProbes
///       arguments:
///         ids:
///           - ${defaultHoneypotProbe.id}
///         displayName: ${name}
///         probeType: host_probe
///         enableDetails: true
/// outputs:
///   alicloudThreatDetectionHoneypotProbeExampleId: ${default.probes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_honeypot_probes_get_honeypot_probes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHoneypotProbesResult> getHoneypotProbes(
  GetHoneypotProbesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getHoneypotProbes:getHoneypotProbes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHoneypotProbesResult.fromMap(result);
}

/// This data source provides Threat Detection Instance available to the user.[What is Instance](https://www.alibabacloud.com/help/en/security-center/latest/what-is-security-center)
///
/// &gt; **NOTE:** Available in 1.199.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getInstances({
///     ids: [defaultAlicloudThreatDetectionInstance.id],
/// });
/// export const alicloudThreatDetectionInstanceExampleId = _default.then(_default => _default.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_instances(ids=[default_alicloud_threat_detection_instance["id"]])
/// pulumi.export("alicloudThreatDetectionInstanceExampleId", default.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudThreatDetectionInstance.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionInstanceExampleId"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := threatdetection.GetInstances(ctx, &threatdetection.GetInstancesArgs{
/// Ids: interface{}{
/// defaultAlicloudThreatDetectionInstance.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudThreatDetectionInstanceExampleId", _default.Instances[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetInstancesArgs;
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
///         final var default = ThreatdetectionFunctions.getInstances(GetInstancesArgs.builder()
///             .ids(defaultAlicloudThreatDetectionInstance.id())
///             .build());
///
///         ctx.export("alicloudThreatDetectionInstanceExampleId", default_.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getInstances
///       arguments:
///         ids:
///           - ${defaultAlicloudThreatDetectionInstance.id}
/// outputs:
///   alicloudThreatDetectionInstanceExampleId: ${default.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// Using this data source can open Threat Detection Log Shipper automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about Threat Detection Log Shipper and how to use it, see [What is Log Shipper](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifyopenlogshipper).
///
/// &gt; **NOTE:** Available in v1.195.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.threatdetection.getLogShipper({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.threatdetection.get_log_shipper(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.ThreatDetection.GetLogShipper.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := threatdetection.GetLogShipper(ctx, &threatdetection.GetLogShipperArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetLogShipperArgs;
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
///         final var open = ThreatdetectionFunctions.getLogShipper(GetLogShipperArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:threatdetection:getLogShipper
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_log_shipper_get_log_shipper_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogShipperResult> getLogShipper(
  GetLogShipperArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getLogShipper:getLogShipper',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogShipperResult.fromMap(result);
}

/// This data source provides Threat Detection Vul Whitelists of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.195.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getVulWhitelists({
///     ids: ["example_id"],
/// });
/// export const alicloudThreatDetectionVulWhitelistExampleId = _default.then(_default => _default.whitelists?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_vul_whitelists(ids=["example_id"])
/// pulumi.export("alicloudThreatDetectionVulWhitelistExampleId", default.whitelists[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetVulWhitelists.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionVulWhitelistExampleId"] = @default.Apply(@default => @default.Apply(getVulWhitelistsResult => getVulWhitelistsResult.Whitelists[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetVulWhitelists(ctx, &threatdetection.GetVulWhitelistsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudThreatDetectionVulWhitelistExampleId", _default.Whitelists[0].Id)
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetVulWhitelistsArgs;
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
///         final var default = ThreatdetectionFunctions.getVulWhitelists(GetVulWhitelistsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("alicloudThreatDetectionVulWhitelistExampleId", default_.whitelists()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getVulWhitelists
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   alicloudThreatDetectionVulWhitelistExampleId: ${default.whitelists[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_vul_whitelists_get_vul_whitelists_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVulWhitelistsResult> getVulWhitelists(
  GetVulWhitelistsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getVulWhitelists:getVulWhitelists',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVulWhitelistsResult.fromMap(result);
}

/// This data source provides Threat Detection Web Lock Config available to the user.[What is Web Lock Config](https://www.alibabacloud.com/help/en/security-center/latest/api-sas-2018-12-03-describeweblockconfiglist)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getWebLockConfigs({
///     ids: [defaultAlicloudThreatDetectionWebLockConfig.id],
/// });
/// export const alicloudThreatDetectionWebLockConfigExampleId = _default.then(_default => _default.configs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_web_lock_configs(ids=[default_alicloud_threat_detection_web_lock_config["id"]])
/// pulumi.export("alicloudThreatDetectionWebLockConfigExampleId", default.configs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetWebLockConfigs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudThreatDetectionWebLockConfig.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudThreatDetectionWebLockConfigExampleId"] = @default.Apply(@default => @default.Apply(getWebLockConfigsResult => getWebLockConfigsResult.Configs[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := threatdetection.GetWebLockConfigs(ctx, &threatdetection.GetWebLockConfigsArgs{
/// Ids: interface{}{
/// defaultAlicloudThreatDetectionWebLockConfig.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudThreatDetectionWebLockConfigExampleId", _default.Configs[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetWebLockConfigsArgs;
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
///         final var default = ThreatdetectionFunctions.getWebLockConfigs(GetWebLockConfigsArgs.builder()
///             .ids(defaultAlicloudThreatDetectionWebLockConfig.id())
///             .build());
///
///         ctx.export("alicloudThreatDetectionWebLockConfigExampleId", default_.configs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getWebLockConfigs
///       arguments:
///         ids:
///           - ${defaultAlicloudThreatDetectionWebLockConfig.id}
/// outputs:
///   alicloudThreatDetectionWebLockConfigExampleId: ${default.configs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_threatdetection_get_web_lock_configs_get_web_lock_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebLockConfigsResult> getWebLockConfigs(
  GetWebLockConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:threatdetection/getWebLockConfigs:getWebLockConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebLockConfigsResult.fromMap(result);
}
