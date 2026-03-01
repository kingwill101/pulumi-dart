import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_pack_args.dart';
import 'compliance_pack_config_rule.dart';
import 'compliance_pack_config_rule_id.dart';
import 'compliance_pack_state.dart';

/// Provides a Cloud Config Compliance Pack resource.
///
/// For information about Cloud Config Compliance Pack and how to use it, see [What is Compliance Pack](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createcompliancepack).
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
/// const name = config.get("name") || "tf-example-config-name";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const rule1 = new alicloud.cfg.Rule("rule1", {
///     description: name,
///     sourceOwner: "ALIYUN",
///     sourceIdentifier: "ram-user-ak-create-date-expired-check",
///     riskLevel: 1,
///     maximumExecutionFrequency: "TwentyFour_Hours",
///     regionIdsScope: _default.then(_default => _default.regions?.[0]?.id),
///     configRuleTriggerTypes: "ScheduledNotification",
///     resourceTypesScopes: ["ACS::RAM::User"],
///     ruleName: "ciscompliancecheck_ram-user-ak-create-date-expired-check",
///     inputParameters: {
///         days: "90",
///     },
/// });
/// const rule2 = new alicloud.cfg.Rule("rule2", {
///     description: name,
///     sourceOwner: "ALIYUN",
///     sourceIdentifier: "adb-cluster-maintain-time-check",
///     riskLevel: 2,
///     regionIdsScope: _default.then(_default => _default.regions?.[0]?.id),
///     configRuleTriggerTypes: "ScheduledNotification",
///     resourceTypesScopes: ["ACS::ADB::DBCluster"],
///     ruleName: "governance-evaluation-adb-cluster-maintain-time-check",
///     inputParameters: {
///         maintainTimes: "02:00-04:00,06:00-08:00,12:00-13:00",
///     },
/// });
/// const defaultCompliancePack = new alicloud.cfg.CompliancePack("default", {
///     compliancePackName: name,
///     description: "CloudGovernanceCenter evaluation",
///     riskLevel: 2,
///     configRuleIds: [
///         {
///             configRuleId: rule1.id,
///         },
///         {
///             configRuleId: rule2.id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example-config-name"
/// default = alicloud.get_regions(current=True)
/// rule1 = alicloud.cfg.Rule("rule1",
///     description=name,
///     source_owner="ALIYUN",
///     source_identifier="ram-user-ak-create-date-expired-check",
///     risk_level=1,
///     maximum_execution_frequency="TwentyFour_Hours",
///     region_ids_scope=default.regions[0].id,
///     config_rule_trigger_types="ScheduledNotification",
///     resource_types_scopes=["ACS::RAM::User"],
///     rule_name="ciscompliancecheck_ram-user-ak-create-date-expired-check",
///     input_parameters={
///         "days": "90",
///     })
/// rule2 = alicloud.cfg.Rule("rule2",
///     description=name,
///     source_owner="ALIYUN",
///     source_identifier="adb-cluster-maintain-time-check",
///     risk_level=2,
///     region_ids_scope=default.regions[0].id,
///     config_rule_trigger_types="ScheduledNotification",
///     resource_types_scopes=["ACS::ADB::DBCluster"],
///     rule_name="governance-evaluation-adb-cluster-maintain-time-check",
///     input_parameters={
///         "maintainTimes": "02:00-04:00,06:00-08:00,12:00-13:00",
///     })
/// default_compliance_pack = alicloud.cfg.CompliancePack("default",
///     compliance_pack_name=name,
///     description="CloudGovernanceCenter evaluation",
///     risk_level=2,
///     config_rule_ids=[
///         {
///             "config_rule_id": rule1.id,
///         },
///         {
///             "config_rule_id": rule2.id,
///         },
///     ])
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
///     var name = config.Get("name") ?? "tf-example-config-name";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var rule1 = new AliCloud.Cfg.Rule("rule1", new()
///     {
///         Description = name,
///         SourceOwner = "ALIYUN",
///         SourceIdentifier = "ram-user-ak-create-date-expired-check",
///         RiskLevel = 1,
///         MaximumExecutionFrequency = "TwentyFour_Hours",
///         RegionIdsScope = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         ConfigRuleTriggerTypes = "ScheduledNotification",
///         ResourceTypesScopes = new[]
///         {
///             "ACS::RAM::User",
///         },
///         RuleName = "ciscompliancecheck_ram-user-ak-create-date-expired-check",
///         InputParameters =
///         {
///             { "days", "90" },
///         },
///     });
///
///     var rule2 = new AliCloud.Cfg.Rule("rule2", new()
///     {
///         Description = name,
///         SourceOwner = "ALIYUN",
///         SourceIdentifier = "adb-cluster-maintain-time-check",
///         RiskLevel = 2,
///         RegionIdsScope = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         ConfigRuleTriggerTypes = "ScheduledNotification",
///         ResourceTypesScopes = new[]
///         {
///             "ACS::ADB::DBCluster",
///         },
///         RuleName = "governance-evaluation-adb-cluster-maintain-time-check",
///         InputParameters =
///         {
///             { "maintainTimes", "02:00-04:00,06:00-08:00,12:00-13:00" },
///         },
///     });
///
///     var defaultCompliancePack = new AliCloud.Cfg.CompliancePack("default", new()
///     {
///         CompliancePackName = name,
///         Description = "CloudGovernanceCenter evaluation",
///         RiskLevel = 2,
///         ConfigRuleIds = new[]
///         {
///             new AliCloud.Cfg.Inputs.CompliancePackConfigRuleIdArgs
///             {
///                 ConfigRuleId = rule1.Id,
///             },
///             new AliCloud.Cfg.Inputs.CompliancePackConfigRuleIdArgs
///             {
///                 ConfigRuleId = rule2.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example-config-name"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rule1, err := cfg.NewRule(ctx, "rule1", &cfg.RuleArgs{
/// 			Description:               pulumi.String(name),
/// 			SourceOwner:               pulumi.String("ALIYUN"),
/// 			SourceIdentifier:          pulumi.String("ram-user-ak-create-date-expired-check"),
/// 			RiskLevel:                 pulumi.Int(1),
/// 			MaximumExecutionFrequency: pulumi.String("TwentyFour_Hours"),
/// 			RegionIdsScope:            pulumi.String(_default.Regions[0].Id),
/// 			ConfigRuleTriggerTypes:    pulumi.String("ScheduledNotification"),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("ACS::RAM::User"),
/// 			},
/// 			RuleName: pulumi.String("ciscompliancecheck_ram-user-ak-create-date-expired-check"),
/// 			InputParameters: pulumi.StringMap{
/// 				"days": pulumi.String("90"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rule2, err := cfg.NewRule(ctx, "rule2", &cfg.RuleArgs{
/// 			Description:            pulumi.String(name),
/// 			SourceOwner:            pulumi.String("ALIYUN"),
/// 			SourceIdentifier:       pulumi.String("adb-cluster-maintain-time-check"),
/// 			RiskLevel:              pulumi.Int(2),
/// 			RegionIdsScope:         pulumi.String(_default.Regions[0].Id),
/// 			ConfigRuleTriggerTypes: pulumi.String("ScheduledNotification"),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("ACS::ADB::DBCluster"),
/// 			},
/// 			RuleName: pulumi.String("governance-evaluation-adb-cluster-maintain-time-check"),
/// 			InputParameters: pulumi.StringMap{
/// 				"maintainTimes": pulumi.String("02:00-04:00,06:00-08:00,12:00-13:00"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewCompliancePack(ctx, "default", &cfg.CompliancePackArgs{
/// 			CompliancePackName: pulumi.String(name),
/// 			Description:        pulumi.String("CloudGovernanceCenter evaluation"),
/// 			RiskLevel:          pulumi.Int(2),
/// 			ConfigRuleIds: cfg.CompliancePackConfigRuleIdArray{
/// 				&cfg.CompliancePackConfigRuleIdArgs{
/// 					ConfigRuleId: rule1.ID(),
/// 				},
/// 				&cfg.CompliancePackConfigRuleIdArgs{
/// 					ConfigRuleId: rule2.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.cfg.Rule;
/// import com.pulumi.alicloud.cfg.RuleArgs;
/// import com.pulumi.alicloud.cfg.CompliancePack;
/// import com.pulumi.alicloud.cfg.CompliancePackArgs;
/// import com.pulumi.alicloud.cfg.inputs.CompliancePackConfigRuleIdArgs;
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
///         final var name = config.get("name").orElse("tf-example-config-name");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var rule1 = new Rule("rule1", RuleArgs.builder()
///             .description(name)
///             .sourceOwner("ALIYUN")
///             .sourceIdentifier("ram-user-ak-create-date-expired-check")
///             .riskLevel(1)
///             .maximumExecutionFrequency("TwentyFour_Hours")
///             .regionIdsScope(default_.regions()[0].id())
///             .configRuleTriggerTypes("ScheduledNotification")
///             .resourceTypesScopes("ACS::RAM::User")
///             .ruleName("ciscompliancecheck_ram-user-ak-create-date-expired-check")
///             .inputParameters(Map.of("days", "90"))
///             .build());
///
///         var rule2 = new Rule("rule2", RuleArgs.builder()
///             .description(name)
///             .sourceOwner("ALIYUN")
///             .sourceIdentifier("adb-cluster-maintain-time-check")
///             .riskLevel(2)
///             .regionIdsScope(default_.regions()[0].id())
///             .configRuleTriggerTypes("ScheduledNotification")
///             .resourceTypesScopes("ACS::ADB::DBCluster")
///             .ruleName("governance-evaluation-adb-cluster-maintain-time-check")
///             .inputParameters(Map.of("maintainTimes", "02:00-04:00,06:00-08:00,12:00-13:00"))
///             .build());
///
///         var defaultCompliancePack = new CompliancePack("defaultCompliancePack", CompliancePackArgs.builder()
///             .compliancePackName(name)
///             .description("CloudGovernanceCenter evaluation")
///             .riskLevel(2)
///             .configRuleIds(
///                 CompliancePackConfigRuleIdArgs.builder()
///                     .configRuleId(rule1.id())
///                     .build(),
///                 CompliancePackConfigRuleIdArgs.builder()
///                     .configRuleId(rule2.id())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example-config-name
/// resources:
///   rule1:
///     type: alicloud:cfg:Rule
///     properties:
///       description: ${name}
///       sourceOwner: ALIYUN
///       sourceIdentifier: ram-user-ak-create-date-expired-check
///       riskLevel: 1
///       maximumExecutionFrequency: TwentyFour_Hours
///       regionIdsScope: ${default.regions[0].id}
///       configRuleTriggerTypes: ScheduledNotification
///       resourceTypesScopes:
///         - ACS::RAM::User
///       ruleName: ciscompliancecheck_ram-user-ak-create-date-expired-check
///       inputParameters:
///         days: '90'
///   rule2:
///     type: alicloud:cfg:Rule
///     properties:
///       description: ${name}
///       sourceOwner: ALIYUN
///       sourceIdentifier: adb-cluster-maintain-time-check
///       riskLevel: 2
///       regionIdsScope: ${default.regions[0].id}
///       configRuleTriggerTypes: ScheduledNotification
///       resourceTypesScopes:
///         - ACS::ADB::DBCluster
///       ruleName: governance-evaluation-adb-cluster-maintain-time-check
///       inputParameters:
///         maintainTimes: 02:00-04:00,06:00-08:00,12:00-13:00
///   defaultCompliancePack:
///     type: alicloud:cfg:CompliancePack
///     name: default
///     properties:
///       compliancePackName: ${name}
///       description: CloudGovernanceCenter evaluation
///       riskLevel: '2'
///       configRuleIds:
///         - configRuleId: ${rule1.id}
///         - configRuleId: ${rule2.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Config Compliance Pack can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/compliancePack:CompliancePack example <id>
/// ```
class CompliancePack extends pulumi.CustomResource {
  /// The Compliance Package Name. **NOTE:** From version 1.146.0, `compliance_pack_name` can be modified.
  late final pulumi.Output<String> compliancePackName;
  /// Compliance Package Template Id.
  late final pulumi.Output<String?> compliancePackTemplateId;
  /// A list of Config Rule IDs. See `config_rule_ids` below.
  late final pulumi.Output<List<CompliancePackConfigRuleId>?> configRuleIds;
  /// A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  late final pulumi.Output<List<CompliancePackConfigRule>?> configRules;
  /// The Description of compliance pack.
  late final pulumi.Output<String> description;
  /// The Risk Level. Valid values:
  late final pulumi.Output<int> riskLevel;
  /// The status of the Compliance Pack.
  late final pulumi.Output<String> status;

  /// Creates a new [CompliancePack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompliancePack]. {@macro pulumi_cfg_compliance_pack_compliance_pack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompliancePack(
    String name, {
    CompliancePackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/compliancePack:CompliancePack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.compliancePackName = registerOutput<String>('compliancePackName');
    this.compliancePackTemplateId = registerOutput<String?>('compliancePackTemplateId');
    this.configRuleIds = registerOutput<List<CompliancePackConfigRuleId>?>('configRuleIds');
    this.configRules = registerOutput<List<CompliancePackConfigRule>?>('configRules');
    this.description = registerOutput<String>('description');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [CompliancePack] resource's state with the given [name] and [id].
  static CompliancePack get(
    String name,
    pulumi.Input<String> id, {
    CompliancePackState? state,
  }) {
    return CompliancePack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CompliancePack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/compliancePack:CompliancePack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.compliancePackName = registerOutput<String>('compliancePackName');
    this.compliancePackTemplateId = registerOutput<String?>('compliancePackTemplateId');
    this.configRuleIds = registerOutput<List<CompliancePackConfigRuleId>?>('configRuleIds');
    this.configRules = registerOutput<List<CompliancePackConfigRule>?>('configRules');
    this.description = registerOutput<String>('description');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.status = registerOutput<String>('status');
  }
}
