import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configs_args.dart';
import 'get_configs_result.dart';
import 'get_data_limits_args.dart';
import 'get_data_limits_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_rules_args.dart';
import 'get_rules_result.dart';

/// This data source provides the Sddp Configs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.133.0.
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
/// const defaultConfig = new alicloud.sddp.Config("default", {
///     code: "access_failed_cnt",
///     value: "10",
/// });
/// const _default = alicloud.sddp.getConfigsOutput({
///     ids: [defaultConfig.id],
///     outputFile: "./t.json",
/// });
/// export const sddpConfigId = _default.apply(_default => _default.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_config = alicloud.sddp.Config("default",
///     code="access_failed_cnt",
///     value="10")
/// default = alicloud.sddp.get_configs_output(ids=[default_config.id],
///     output_file="./t.json")
/// pulumi.export("sddpConfigId", default.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultConfig = new AliCloud.Sddp.Config("default", new()
///     {
///         Code = "access_failed_cnt",
///         Value = "10",
///     });
///
///     var @default = AliCloud.Sddp.GetConfigs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultConfig.Id,
///         },
///         OutputFile = "./t.json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["sddpConfigId"] = @default.Apply(@default => @default.Apply(getConfigsResult => getConfigsResult.Ids)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultConfig, err := sddp.NewConfig(ctx, "default", &sddp.ConfigArgs{
/// Code: pulumi.String("access_failed_cnt"),
/// Value: pulumi.String("10"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := sddp.GetConfigsOutput(ctx, sddp.GetConfigsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultConfig.ID(),
/// },
/// OutputFile: pulumi.String("./t.json"),
/// }, nil);
/// ctx.Export("sddpConfigId", _default.ApplyT(func(_default sddp.GetConfigsResult) (interface{}, error) {
/// return _default.Ids, nil
/// }).(pulumi.Interface{}Output))
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
/// import com.pulumi.alicloud.sddp.Config;
/// import com.pulumi.alicloud.sddp.ConfigArgs;
/// import com.pulumi.alicloud.sddp.SddpFunctions;
/// import com.pulumi.alicloud.sddp.inputs.GetConfigsArgs;
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
///         var defaultConfig = new Config("defaultConfig", ConfigArgs.builder()
///             .code("access_failed_cnt")
///             .value("10")
///             .build());
///
///         final var default = SddpFunctions.getConfigs(GetConfigsArgs.builder()
///             .ids(defaultConfig.id())
///             .outputFile("./t.json")
///             .build());
///
///         ctx.export("sddpConfigId", default_.applyValue(_default_ -> _default_.ids()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultConfig:
///     type: alicloud:sddp:Config
///     name: default
///     properties:
///       code: access_failed_cnt
///       value: 10
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sddp:getConfigs
///       arguments:
///         ids:
///           - ${defaultConfig.id}
///         outputFile: ./t.json
/// outputs:
///   sddpConfigId: ${default.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sddp_get_configs_get_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigsResult> getConfigs(
  GetConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sddp/getConfigs:getConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigsResult.fromMap(result);
}

/// This data source provides the Sddp Data Limits of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.159.0.
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
/// const ids = alicloud.sddp.getDataLimits({});
/// export const sddpDataLimitId1 = ids.then(ids => ids.limits?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.sddp.get_data_limits()
/// pulumi.export("sddpDataLimitId1", ids.limits[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Sddp.GetDataLimits.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["sddpDataLimitId1"] = ids.Apply(getDataLimitsResult => getDataLimitsResult.Limits[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := sddp.GetDataLimits(ctx, &sddp.GetDataLimitsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("sddpDataLimitId1", ids.Limits[0].Id)
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
/// import com.pulumi.alicloud.sddp.SddpFunctions;
/// import com.pulumi.alicloud.sddp.inputs.GetDataLimitsArgs;
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
///         final var ids = SddpFunctions.getDataLimits(GetDataLimitsArgs.builder()
///             .build());
///
///         ctx.export("sddpDataLimitId1", ids.limits()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:sddp:getDataLimits
///       arguments: {}
/// outputs:
///   sddpDataLimitId1: ${ids.limits[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sddp_get_data_limits_get_data_limits_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLimitsResult> getDataLimits(
  GetDataLimitsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sddp/getDataLimits:getDataLimits',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLimitsResult.fromMap(result);
}

/// This data source provides the Sddp Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.136.0.
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
/// const _default = alicloud.sddp.getInstances({});
/// export const sddpInstanceId = _default.then(_default => _default.instances?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.sddp.get_instances()
/// pulumi.export("sddpInstanceId", default.instances[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Sddp.GetInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["sddpInstanceId"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := sddp.GetInstances(ctx, &sddp.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("sddpInstanceId", _default.Instances[0])
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
/// import com.pulumi.alicloud.sddp.SddpFunctions;
/// import com.pulumi.alicloud.sddp.inputs.GetInstancesArgs;
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
///         final var default = SddpFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("sddpInstanceId", default_.instances()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sddp:getInstances
///       arguments: {}
/// outputs:
///   sddpInstanceId: ${default.instances[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sddp_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sddp/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Sddp Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.132.0.
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
/// const defaultRule = new alicloud.sddp.Rule("default", {
///     category: 0,
///     content: "content",
///     ruleName: "rule_name",
///     riskLevelId: "4",
///     productCode: "ODPS",
/// });
/// const _default = alicloud.sddp.getRulesOutput({
///     ids: [defaultRule.id],
/// });
/// export const sddpRuleId = _default.apply(_default => _default.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_rule = alicloud.sddp.Rule("default",
///     category=0,
///     content="content",
///     rule_name="rule_name",
///     risk_level_id="4",
///     product_code="ODPS")
/// default = alicloud.sddp.get_rules_output(ids=[default_rule.id])
/// pulumi.export("sddpRuleId", default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRule = new AliCloud.Sddp.Rule("default", new()
///     {
///         Category = 0,
///         Content = "content",
///         RuleName = "rule_name",
///         RiskLevelId = "4",
///         ProductCode = "ODPS",
///     });
///
///     var @default = AliCloud.Sddp.GetRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultRule.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["sddpRuleId"] = @default.Apply(@default => @default.Apply(getRulesResult => getRulesResult.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultRule, err := sddp.NewRule(ctx, "default", &sddp.RuleArgs{
/// Category: pulumi.Int(0),
/// Content: pulumi.String("content"),
/// RuleName: pulumi.String("rule_name"),
/// RiskLevelId: pulumi.String("4"),
/// ProductCode: pulumi.String("ODPS"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := sddp.GetRulesOutput(ctx, sddp.GetRulesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultRule.ID(),
/// },
/// }, nil);
/// ctx.Export("sddpRuleId", _default.ApplyT(func(_default sddp.GetRulesResult) (*string, error) {
/// return &default.Id, nil
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
/// import com.pulumi.alicloud.sddp.Rule;
/// import com.pulumi.alicloud.sddp.RuleArgs;
/// import com.pulumi.alicloud.sddp.SddpFunctions;
/// import com.pulumi.alicloud.sddp.inputs.GetRulesArgs;
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
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .category(0)
///             .content("content")
///             .ruleName("rule_name")
///             .riskLevelId("4")
///             .productCode("ODPS")
///             .build());
///
///         final var default = SddpFunctions.getRules(GetRulesArgs.builder()
///             .ids(defaultRule.id())
///             .build());
///
///         ctx.export("sddpRuleId", default_.applyValue(_default_ -> _default_.id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultRule:
///     type: alicloud:sddp:Rule
///     name: default
///     properties:
///       category: '0'
///       content: content
///       ruleName: rule_name
///       riskLevelId: '4'
///       productCode: ODPS
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sddp:getRules
///       arguments:
///         ids:
///           - ${defaultRule.id}
/// outputs:
///   sddpRuleId: ${default.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sddp_get_rules_get_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesResult> getRules(
  GetRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sddp/getRules:getRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesResult.fromMap(result);
}
