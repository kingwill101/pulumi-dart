import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_compliance_pack_args.dart';
import 'aggregate_compliance_pack_config_rule.dart';
import 'aggregate_compliance_pack_config_rule_id.dart';
import 'aggregate_compliance_pack_state.dart';

/// Provides a Cloud Config Aggregate Compliance Pack resource.
///
/// For information about Cloud Config Aggregate Compliance Pack and how to use it, see [What is Aggregate Compliance Pack](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createaggregatecompliancepack).
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
/// const name = config.get("name") || "terraform_example";
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
///     description: name,
///     riskLevel: 1,
///     resourceTypesScopes: ["ACS::ECS::Instance"],
///     inputParameters: {
///         key: "example",
///         value: "example",
///     },
/// });
/// const defaultAggregateCompliancePack = new alicloud.cfg.AggregateCompliancePack("default", {
///     aggregateCompliancePackName: name,
///     aggregatorId: defaultAggregator.id,
///     description: name,
///     riskLevel: 1,
///     configRuleIds: [{
///         configRuleId: defaultAggregateConfigRule.configRuleId,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
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
///     description=name,
///     risk_level=1,
///     resource_types_scopes=["ACS::ECS::Instance"],
///     input_parameters={
///         "key": "example",
///         "value": "example",
///     })
/// default_aggregate_compliance_pack = alicloud.cfg.AggregateCompliancePack("default",
///     aggregate_compliance_pack_name=name,
///     aggregator_id=default_aggregator.id,
///     description=name,
///     risk_level=1,
///     config_rule_ids=[{
///         "config_rule_id": default_aggregate_config_rule.config_rule_id,
///     }])
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
///     var name = config.Get("name") ?? "terraform_example";
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
///         Description = name,
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
///     var defaultAggregateCompliancePack = new AliCloud.Cfg.AggregateCompliancePack("default", new()
///     {
///         AggregateCompliancePackName = name,
///         AggregatorId = defaultAggregator.Id,
///         Description = name,
///         RiskLevel = 1,
///         ConfigRuleIds = new[]
///         {
///             new AliCloud.Cfg.Inputs.AggregateCompliancePackConfigRuleIdArgs
///             {
///                 ConfigRuleId = defaultAggregateConfigRule.ConfigRuleId,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
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
/// 		defaultAggregateConfigRule, err := cfg.NewAggregateConfigRule(ctx, "default", &cfg.AggregateConfigRuleArgs{
/// 			AggregateConfigRuleName: pulumi.String("contains-tag"),
/// 			AggregatorId:            defaultAggregator.ID(),
/// 			ConfigRuleTriggerTypes:  pulumi.String("ConfigurationItemChangeNotification"),
/// 			SourceOwner:             pulumi.String("ALIYUN"),
/// 			SourceIdentifier:        pulumi.String("contains-tag"),
/// 			Description:             pulumi.String(name),
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
/// 		_, err = cfg.NewAggregateCompliancePack(ctx, "default", &cfg.AggregateCompliancePackArgs{
/// 			AggregateCompliancePackName: pulumi.String(name),
/// 			AggregatorId:                defaultAggregator.ID(),
/// 			Description:                 pulumi.String(name),
/// 			RiskLevel:                   pulumi.Int(1),
/// 			ConfigRuleIds: cfg.AggregateCompliancePackConfigRuleIdArray{
/// 				&cfg.AggregateCompliancePackConfigRuleIdArgs{
/// 					ConfigRuleId: defaultAggregateConfigRule.ConfigRuleId,
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.alicloud.cfg.Aggregator;
/// import com.pulumi.alicloud.cfg.AggregatorArgs;
/// import com.pulumi.alicloud.cfg.inputs.AggregatorAggregatorAccountArgs;
/// import com.pulumi.alicloud.cfg.AggregateConfigRule;
/// import com.pulumi.alicloud.cfg.AggregateConfigRuleArgs;
/// import com.pulumi.alicloud.cfg.AggregateCompliancePack;
/// import com.pulumi.alicloud.cfg.AggregateCompliancePackArgs;
/// import com.pulumi.alicloud.cfg.inputs.AggregateCompliancePackConfigRuleIdArgs;
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
///             .description(name)
///             .riskLevel(1)
///             .resourceTypesScopes("ACS::ECS::Instance")
///             .inputParameters(Map.ofEntries(
///                 Map.entry("key", "example"),
///                 Map.entry("value", "example")
///             ))
///             .build());
///
///         var defaultAggregateCompliancePack = new AggregateCompliancePack("defaultAggregateCompliancePack", AggregateCompliancePackArgs.builder()
///             .aggregateCompliancePackName(name)
///             .aggregatorId(defaultAggregator.id())
///             .description(name)
///             .riskLevel(1)
///             .configRuleIds(AggregateCompliancePackConfigRuleIdArgs.builder()
///                 .configRuleId(defaultAggregateConfigRule.configRuleId())
///                 .build())
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
/// Cloud Config Aggregate Compliance Pack can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/aggregateCompliancePack:AggregateCompliancePack example <aggregator_id>:<aggregator_compliance_pack_id>
/// ```
class AggregateCompliancePack extends pulumi.CustomResource {
  /// The name of compliance package name. **NOTE:** From version 1.145.0, `aggregate_compliance_pack_name` can be modified.
  late final pulumi.Output<String> aggregateCompliancePackName;
  /// The ID of the compliance package.
  late final pulumi.Output<String> aggregatorCompliancePackId;
  /// The ID of aggregator.
  late final pulumi.Output<String> aggregatorId;
  /// The Template ID of compliance package.
  late final pulumi.Output<String?> compliancePackTemplateId;
  /// A list of Config Rule IDs. See `config_rule_ids` below.
  late final pulumi.Output<List<AggregateCompliancePackConfigRuleId>?> configRuleIds;
  /// A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  late final pulumi.Output<List<AggregateCompliancePackConfigRule>?> configRules;
  /// The description of compliance package.
  late final pulumi.Output<String> description;
  /// The Risk Level. Valid values:
  late final pulumi.Output<int> riskLevel;
  /// The status of the Aggregate Compliance Pack.
  late final pulumi.Output<String> status;

  /// Creates a new [AggregateCompliancePack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregateCompliancePack]. {@macro pulumi_cfg_aggregate_compliance_pack_aggregate_compliance_pack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregateCompliancePack(
    String name, {
    AggregateCompliancePackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregateCompliancePack:AggregateCompliancePack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregateCompliancePackName = registerOutput<String>('aggregateCompliancePackName');
    this.aggregatorCompliancePackId = registerOutput<String>('aggregatorCompliancePackId');
    this.aggregatorId = registerOutput<String>('aggregatorId');
    this.compliancePackTemplateId = registerOutput<String?>('compliancePackTemplateId');
    this.configRuleIds = registerOutput<List<AggregateCompliancePackConfigRuleId>?>('configRuleIds');
    this.configRules = registerOutput<List<AggregateCompliancePackConfigRule>?>('configRules');
    this.description = registerOutput<String>('description');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [AggregateCompliancePack] resource's state with the given [name] and [id].
  static AggregateCompliancePack get(
    String name,
    pulumi.Input<String> id, {
    AggregateCompliancePackState? state,
  }) {
    return AggregateCompliancePack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AggregateCompliancePack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregateCompliancePack:AggregateCompliancePack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregateCompliancePackName = registerOutput<String>('aggregateCompliancePackName');
    this.aggregatorCompliancePackId = registerOutput<String>('aggregatorCompliancePackId');
    this.aggregatorId = registerOutput<String>('aggregatorId');
    this.compliancePackTemplateId = registerOutput<String?>('compliancePackTemplateId');
    this.configRuleIds = registerOutput<List<AggregateCompliancePackConfigRuleId>?>('configRuleIds');
    this.configRules = registerOutput<List<AggregateCompliancePackConfigRule>?>('configRules');
    this.description = registerOutput<String>('description');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.status = registerOutput<String>('status');
  }
}
