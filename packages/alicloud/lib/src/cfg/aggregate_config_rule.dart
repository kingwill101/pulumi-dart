import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_config_rule_args.dart';

/// Provides a Cloud Config Aggregate Config Rule resource.
///
/// For information about Cloud Config Aggregate Config Rule and how to use it, see [What is Aggregate Config Rule](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createaggregateconfigrule).
///
/// > **NOTE:** Available since v1.124.0.
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
/// const _default = alicloud.resourcemanager.getAccounts({
///     status: "CreateSuccess",
/// });
/// const last = _default.then(_default => _default.accounts).length.apply(length => length - 1);
/// const defaultAggregator = new alicloud.cfg.Aggregator("default", {
///     aggregatorAccounts: [{
///         accountId: _default.then(_default => _default.accounts[last].accountId),
///         accountName: _default.then(_default => _default.accounts[last].displayName),
///         accountType: "ResourceDirectory",
///     }],
///     aggregatorName: name,
///     description: name,
///     aggregatorType: "CUSTOM",
/// });
/// const defaultAggregateConfigRule = new alicloud.cfg.AggregateConfigRule("default", {
///     aggregateConfigRuleName: "contains-tag",
///     aggregatorId: defaultAggregator.id,
///     configRuleTriggerTypes: "ConfigurationItemChangeNotification",
///     sourceOwner: "ALIYUN",
///     sourceIdentifier: "contains-tag",
///     riskLevel: 1,
///     resourceTypesScopes: ["ACS::ECS::Instance"],
///     inputParameters: {
///         key: "example",
///         value: "example",
///     },
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
/// default = alicloud.resourcemanager.get_accounts(status="CreateSuccess")
/// last = len(default.accounts).apply(lambda length: length - 1)
/// default_aggregator = alicloud.cfg.Aggregator("default",
///     aggregator_accounts=[{
///         "account_id": default.accounts[last].account_id,
///         "account_name": default.accounts[last].display_name,
///         "account_type": "ResourceDirectory",
///     }],
///     aggregator_name=name,
///     description=name,
///     aggregator_type="CUSTOM")
/// default_aggregate_config_rule = alicloud.cfg.AggregateConfigRule("default",
///     aggregate_config_rule_name="contains-tag",
///     aggregator_id=default_aggregator.id,
///     config_rule_trigger_types="ConfigurationItemChangeNotification",
///     source_owner="ALIYUN",
///     source_identifier="contains-tag",
///     risk_level=1,
///     resource_types_scopes=["ACS::ECS::Instance"],
///     input_parameters={
///         "key": "example",
///         "value": "example",
///     })
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
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke(new()
///     {
///         Status = "CreateSuccess",
///     });
///
///     var last = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)).Length.Apply(length => length - 1);
///
///     var defaultAggregator = new AliCloud.Cfg.Aggregator("default", new()
///     {
///         AggregatorAccounts = new[]
///         {
///             new AliCloud.Cfg.Inputs.AggregatorAggregatorAccountArgs
///             {
///                 AccountId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)[last].AccountId),
///                 AccountName = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts)[last].DisplayName),
///                 AccountType = "ResourceDirectory",
///             },
///         },
///         AggregatorName = name,
///         Description = name,
///         AggregatorType = "CUSTOM",
///     });
///
///     var defaultAggregateConfigRule = new AliCloud.Cfg.AggregateConfigRule("default", new()
///     {
///         AggregateConfigRuleName = "contains-tag",
///         AggregatorId = defaultAggregator.Id,
///         ConfigRuleTriggerTypes = "ConfigurationItemChangeNotification",
///         SourceOwner = "ALIYUN",
///         SourceIdentifier = "contains-tag",
///         RiskLevel = 1,
///         ResourceTypesScopes = new[]
///         {
///             "ACS::ECS::Instance",
///         },
///         InputParameters =
///         {
///             { "key", "example" },
///             { "value", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{
/// 			Status: pulumi.StringRef("CreateSuccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		last := len(_default.Accounts).ApplyT(func(length int) (float64, error) {
/// 			return float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output)), nil
/// 		}).(pulumi.Float64Output)
/// 		defaultAggregator, err := cfg.NewAggregator(ctx, "default", &cfg.AggregatorArgs{
/// 			AggregatorAccounts: cfg.AggregatorAggregatorAccountArray{
/// 				&cfg.AggregatorAggregatorAccountArgs{
/// 					AccountId:   pulumi.String(_default.Accounts[last].AccountId),
/// 					AccountName: pulumi.String(_default.Accounts[last].DisplayName),
/// 					AccountType: pulumi.String("ResourceDirectory"),
/// 				},
/// 			},
/// 			AggregatorName: pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 			AggregatorType: pulumi.String("CUSTOM"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewAggregateConfigRule(ctx, "default", &cfg.AggregateConfigRuleArgs{
/// 			AggregateConfigRuleName: pulumi.String("contains-tag"),
/// 			AggregatorId:            defaultAggregator.ID(),
/// 			ConfigRuleTriggerTypes:  pulumi.String("ConfigurationItemChangeNotification"),
/// 			SourceOwner:             pulumi.String("ALIYUN"),
/// 			SourceIdentifier:        pulumi.String("contains-tag"),
/// 			RiskLevel:               pulumi.Int(1),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("ACS::ECS::Instance"),
/// 			},
/// 			InputParameters: pulumi.StringMap{
/// 				"key":   pulumi.String("example"),
/// 				"value": pulumi.String("example"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.alicloud.cfg.Aggregator;
/// import com.pulumi.alicloud.cfg.AggregatorArgs;
/// import com.pulumi.alicloud.cfg.inputs.AggregatorAggregatorAccountArgs;
/// import com.pulumi.alicloud.cfg.AggregateConfigRule;
/// import com.pulumi.alicloud.cfg.AggregateConfigRuleArgs;
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
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .status("CreateSuccess")
///             .build());
///
///         final var last = default_.accounts().length().applyValue(_length -> _length - 1);
///
///         var defaultAggregator = new Aggregator("defaultAggregator", AggregatorArgs.builder()
///             .aggregatorAccounts(AggregatorAggregatorAccountArgs.builder()
///                 .accountId(default_.accounts()[last].accountId())
///                 .accountName(default_.accounts()[last].displayName())
///                 .accountType("ResourceDirectory")
///                 .build())
///             .aggregatorName(name)
///             .description(name)
///             .aggregatorType("CUSTOM")
///             .build());
///
///         var defaultAggregateConfigRule = new AggregateConfigRule("defaultAggregateConfigRule", AggregateConfigRuleArgs.builder()
///             .aggregateConfigRuleName("contains-tag")
///             .aggregatorId(defaultAggregator.id())
///             .configRuleTriggerTypes("ConfigurationItemChangeNotification")
///             .sourceOwner("ALIYUN")
///             .sourceIdentifier("contains-tag")
///             .riskLevel(1)
///             .resourceTypesScopes("ACS::ECS::Instance")
///             .inputParameters(Map.ofEntries(
///                 Map.entry("key", "example"),
///                 Map.entry("value", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Config Aggregate Config Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/aggregateConfigRule:AggregateConfigRule example "<aggregator_id>:<config_rule_id>"
/// ```
class AggregateConfigRule extends pulumi.CustomResource {
  /// The name of the rule.
  late final pulumi.Output<String> aggregateConfigRuleName;
  /// The Aggregator Id.
  late final pulumi.Output<String> aggregatorId;
  /// (Available since v1.141.0) The rule ID of Aggregate Config Rule.
  late final pulumi.Output<String> configRuleId;
  /// The trigger type of the rule. Valid values:
  /// - `ConfigurationItemChangeNotification`: The rule is triggered by configuration changes.
  /// - `ScheduledNotification`: The rule is periodically triggered.
  /// > **NOTE:** Separate multiple trigger types with commas (,).
  late final pulumi.Output<String> configRuleTriggerTypes;
  /// The description of the rule.
  late final pulumi.Output<String?> description;
  /// The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  late final pulumi.Output<String?> excludeResourceIdsScope;
  /// The settings map of the input parameters for the rule.
  late final pulumi.Output<Map<String, String>?> inputParameters;
  /// The frequency of the compliance evaluations. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`. System default value is `TwentyFour_Hours` and valid when the `config_rule_trigger_types` is `ScheduledNotification`.
  late final pulumi.Output<String> maximumExecutionFrequency;
  /// The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  late final pulumi.Output<String?> regionIdsScope;
  /// The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  late final pulumi.Output<String?> resourceGroupIdsScope;
  /// Resource types to be evaluated. [Alibaba Cloud services that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  late final pulumi.Output<List<String>> resourceTypesScopes;
  /// The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info.
  late final pulumi.Output<int> riskLevel;
  /// The identifier of the rule. For a managed rule, the value is the identifier of the managed rule. For a custom rule, the value is the ARN of the custom rule. Using managed rules, refer to [List of Managed rules.](https://www.alibabacloud.com/help/en/doc-detail/127404.htm)
  late final pulumi.Output<String> sourceIdentifier;
  /// Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values: `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule.
  late final pulumi.Output<String> sourceOwner;
  /// The rule status. The valid values: `ACTIVE`, `INACTIVE`.
  late final pulumi.Output<String> status;
  /// The rule monitors the tag key, only applies to rules created based on managed rules.
  late final pulumi.Output<String?> tagKeyScope;
  /// The rule monitors the tag value, use with the `tag_key_scope` options. only applies to rules created based on managed rules.
  late final pulumi.Output<String?> tagValueScope;

  /// Creates a new [AggregateConfigRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregateConfigRule]. {@macro pulumi_cfg_aggregate_config_rule_aggregate_config_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregateConfigRule(
    String name, {
    AggregateConfigRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregateConfigRule:AggregateConfigRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregateConfigRuleName = registerOutput<String>('aggregateConfigRuleName');
    this.aggregatorId = registerOutput<String>('aggregatorId');
    this.configRuleId = registerOutput<String>('configRuleId');
    this.configRuleTriggerTypes = registerOutput<String>('configRuleTriggerTypes');
    this.description = registerOutput<String?>('description');
    this.excludeResourceIdsScope = registerOutput<String?>('excludeResourceIdsScope');
    this.inputParameters = registerOutput<Map<String, String>?>('inputParameters');
    this.maximumExecutionFrequency = registerOutput<String>('maximumExecutionFrequency');
    this.regionIdsScope = registerOutput<String?>('regionIdsScope');
    this.resourceGroupIdsScope = registerOutput<String?>('resourceGroupIdsScope');
    this.resourceTypesScopes = registerOutput<List<String>>('resourceTypesScopes');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.sourceIdentifier = registerOutput<String>('sourceIdentifier');
    this.sourceOwner = registerOutput<String>('sourceOwner');
    this.status = registerOutput<String>('status');
    this.tagKeyScope = registerOutput<String?>('tagKeyScope');
    this.tagValueScope = registerOutput<String?>('tagValueScope');
  }
}
