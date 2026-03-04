import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_baselines_args.dart';
import 'get_baselines_result.dart';

/// This data source provides Governance Baseline available to the user.[What is Baseline](https://next.api.aliyun.com/document/governance/2021-01-20/CreateAccountFactoryBaseline)
///
/// &gt; **NOTE:** Available since v1.228.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const itemPasswordPolicy = config.get("itemPasswordPolicy") || "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY";
/// const itemServices = config.get("itemServices") || "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES";
/// const itemRamSecurity = config.get("itemRamSecurity") || "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE";
/// const defaultBaseline = new alicloud.governance.Baseline("default", {
///     baselineItems: [{
///         version: "1.0",
///         name: itemPasswordPolicy,
///         config: JSON.stringify({
///             MinimumPasswordLength: 8,
///             RequireLowercaseCharacters: true,
///             RequireUppercaseCharacters: true,
///             RequireNumbers: true,
///             RequireSymbols: true,
///             MaxPasswordAge: 0,
///             HardExpiry: false,
///             PasswordReusePrevention: 0,
///             MaxLoginAttempts: 0,
///         }),
///     }],
///     description: name,
///     baselineName: `${name}-${defaultInteger.result}`,
/// });
/// const _default = pulumi.all([defaultBaseline.id, defaultBaseline.baselineName]).apply(([id, baselineName]) => alicloud.governance.getBaselinesOutput({
///     ids: [id],
///     nameRegex: baselineName,
/// }));
/// export const alicloudGovernanceBaselineExampleId = _default.apply(_default => _default.baselines?.[0]?.baselineId);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// item_password_policy = config.get("itemPasswordPolicy")
/// if item_password_policy is None:
///     item_password_policy = "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY"
/// item_services = config.get("itemServices")
/// if item_services is None:
///     item_services = "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES"
/// item_ram_security = config.get("itemRamSecurity")
/// if item_ram_security is None:
///     item_ram_security = "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE"
/// default_baseline = alicloud.governance.Baseline("default",
///     baseline_items=[{
///         "version": "1.0",
///         "name": item_password_policy,
///         "config": json.dumps({
///             "MinimumPasswordLength": 8,
///             "RequireLowercaseCharacters": True,
///             "RequireUppercaseCharacters": True,
///             "RequireNumbers": True,
///             "RequireSymbols": True,
///             "MaxPasswordAge": 0,
///             "HardExpiry": False,
///             "PasswordReusePrevention": 0,
///             "MaxLoginAttempts": 0,
///         }),
///     }],
///     description=name,
///     baseline_name=f"{name}-{default_integer['result']}")
/// default = pulumi.Output.all(
///     id=default_baseline.id,
///     baseline_name=default_baseline.baseline_name
/// ).apply(lambda resolved_outputs: alicloud.governance.get_baselines_output(ids=[resolved_outputs['id']],
///     name_regex=resolved_outputs['baseline_name']))
///
/// pulumi.export("alicloudGovernanceBaselineExampleId", default.baselines[0].baseline_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var itemPasswordPolicy = config.Get("itemPasswordPolicy") ?? "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY";
///     var itemServices = config.Get("itemServices") ?? "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES";
///     var itemRamSecurity = config.Get("itemRamSecurity") ?? "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE";
///     var defaultBaseline = new AliCloud.Governance.Baseline("default", new()
///     {
///         BaselineItems = new[]
///         {
///             new AliCloud.Governance.Inputs.BaselineBaselineItemArgs
///             {
///                 Version = "1.0",
///                 Name = itemPasswordPolicy,
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["MinimumPasswordLength"] = 8,
///                     ["RequireLowercaseCharacters"] = true,
///                     ["RequireUppercaseCharacters"] = true,
///                     ["RequireNumbers"] = true,
///                     ["RequireSymbols"] = true,
///                     ["MaxPasswordAge"] = 0,
///                     ["HardExpiry"] = false,
///                     ["PasswordReusePrevention"] = 0,
///                     ["MaxLoginAttempts"] = 0,
///                 }),
///             },
///         },
///         Description = name,
///         BaselineName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var @default = AliCloud.Governance.GetBaselines.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultBaseline.Id,
///         },
///         NameRegex = defaultBaseline.BaselineName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudGovernanceBaselineExampleId"] = @default.Apply(@default => @default.Apply(getBaselinesResult => getBaselinesResult.Baselines[0]?.BaselineId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/governance"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform_example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// itemPasswordPolicy := "ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY";
/// if param := cfg.Get("itemPasswordPolicy"); param != ""{
/// itemPasswordPolicy = param
/// }
/// itemServices := "ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES";
/// if param := cfg.Get("itemServices"); param != ""{
/// itemServices = param
/// }
/// itemRamSecurity := "ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE";
/// if param := cfg.Get("itemRamSecurity"); param != ""{
/// itemRamSecurity = param
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "MinimumPasswordLength": 8,
/// "RequireLowercaseCharacters": true,
/// "RequireUppercaseCharacters": true,
/// "RequireNumbers": true,
/// "RequireSymbols": true,
/// "MaxPasswordAge": 0,
/// "HardExpiry": false,
/// "PasswordReusePrevention": 0,
/// "MaxLoginAttempts": 0,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// defaultBaseline, err := governance.NewBaseline(ctx, "default", &governance.BaselineArgs{
/// BaselineItems: governance.BaselineBaselineItemArray{
/// &governance.BaselineBaselineItemArgs{
/// Version: pulumi.String("1.0"),
/// Name: pulumi.String(itemPasswordPolicy),
/// Config: pulumi.String(json0),
/// },
/// },
/// Description: pulumi.String(name),
/// BaselineName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// _default := pulumi.All(defaultBaseline.ID(),defaultBaseline.BaselineName).ApplyT(func(_args []interface{}) (governance.GetBaselinesResult, error) {
/// id := _args[0].(string)
/// baselineName := _args[1].(*string)
/// return governance.GetBaselinesResult(interface{}(governance.GetBaselines(ctx, &governance.GetBaselinesArgs{
/// Ids: []string{
/// id,
/// },
/// NameRegex: pulumi.StringRef(pulumi.StringRef(baselineName)),
/// }, nil))), nil
/// }).(governance.GetBaselinesResultOutput)
/// ctx.Export("alicloudGovernanceBaselineExampleId", _default.ApplyT(func(_default governance.GetBaselinesResult) (*string, error) {
/// return &default.Baselines[0].BaselineId, nil
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.governance.Baseline;
/// import com.pulumi.alicloud.governance.BaselineArgs;
/// import com.pulumi.alicloud.governance.inputs.BaselineBaselineItemArgs;
/// import com.pulumi.alicloud.governance.GovernanceFunctions;
/// import com.pulumi.alicloud.governance.inputs.GetBaselinesArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var itemPasswordPolicy = config.get("itemPasswordPolicy").orElse("ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY");
///         final var itemServices = config.get("itemServices").orElse("ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES");
///         final var itemRamSecurity = config.get("itemRamSecurity").orElse("ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE");
///         var defaultBaseline = new Baseline("defaultBaseline", BaselineArgs.builder()
///             .baselineItems(BaselineBaselineItemArgs.builder()
///                 .version("1.0")
///                 .name(itemPasswordPolicy)
///                 .config(serializeJson(
///                     jsonObject(
///                         jsonProperty("MinimumPasswordLength", 8),
///                         jsonProperty("RequireLowercaseCharacters", true),
///                         jsonProperty("RequireUppercaseCharacters", true),
///                         jsonProperty("RequireNumbers", true),
///                         jsonProperty("RequireSymbols", true),
///                         jsonProperty("MaxPasswordAge", 0),
///                         jsonProperty("HardExpiry", false),
///                         jsonProperty("PasswordReusePrevention", 0),
///                         jsonProperty("MaxLoginAttempts", 0)
///                     )))
///                 .build())
///             .description(name)
///             .baselineName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         final var default = Output.tuple(defaultBaseline.id(), defaultBaseline.baselineName()).applyValue(values -> {
///             var id = values.t1;
///             var baselineName = values.t2;
///             return GovernanceFunctions.getBaselines(GetBaselinesArgs.builder()
///                 .ids(id)
///                 .nameRegex(baselineName)
///                 .build());
///         });
///
///         ctx.export("alicloudGovernanceBaselineExampleId", default_.applyValue(_default_ -> _default_.baselines()[0].baselineId()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
///   itemPasswordPolicy:
///     type: string
///     default: ACS-BP_ACCOUNT_FACTORY_RAM_USER_PASSWORD_POLICY
///   itemServices:
///     type: string
///     default: ACS-BP_ACCOUNT_FACTORY_SUBSCRIBE_SERVICES
///   itemRamSecurity:
///     type: string
///     default: ACS-BP_ACCOUNT_FACTORY_RAM_SECURITY_PREFERENCE
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultBaseline:
///     type: alicloud:governance:Baseline
///     name: default
///     properties:
///       baselineItems:
///         - version: '1.0'
///           name: ${itemPasswordPolicy}
///           config:
///             fn::toJSON:
///               MinimumPasswordLength: 8
///               RequireLowercaseCharacters: true
///               RequireUppercaseCharacters: true
///               RequireNumbers: true
///               RequireSymbols: true
///               MaxPasswordAge: 0
///               HardExpiry: false
///               PasswordReusePrevention: 0
///               MaxLoginAttempts: 0
///       description: ${name}
///       baselineName: ${name}-${defaultInteger.result}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:governance:getBaselines
///       arguments:
///         ids:
///           - ${defaultBaseline.id}
///         nameRegex: ${defaultBaseline.baselineName}
/// outputs:
///   alicloudGovernanceBaselineExampleId: ${default.baselines[0].baselineId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_governance_get_baselines_get_baselines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBaselinesResult> getBaselines(
  GetBaselinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:governance/getBaselines:getBaselines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBaselinesResult.fromMap(result);
}
