import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_compliance.dart';
import 'rule_state.dart';

/// Provides a Config Rule resource.
///
/// For information about Config Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createconfigrule).
///
/// > **NOTE:** Available since v1.204.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultRule = new alicloud.cfg.Rule("default", {
///     description: "If the resource matches one of the specified tag key-value pairs, the configuration is considered compliant.",
///     sourceOwner: "ALIYUN",
///     sourceIdentifier: "contains-tag",
///     riskLevel: 1,
///     tagValueScope: "example-value",
///     tagKeyScope: "example-key",
///     excludeResourceIdsScope: "example-resource_id",
///     regionIdsScope: "cn-hangzhou",
///     configRuleTriggerTypes: "ConfigurationItemChangeNotification",
///     resourceGroupIdsScope: _default.then(_default => _default.ids?.[0]),
///     resourceTypesScopes: ["ACS::RDS::DBInstance"],
///     ruleName: "contains-tag",
///     inputParameters: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_rule = alicloud.cfg.Rule("default",
///     description="If the resource matches one of the specified tag key-value pairs, the configuration is considered compliant.",
///     source_owner="ALIYUN",
///     source_identifier="contains-tag",
///     risk_level=1,
///     tag_value_scope="example-value",
///     tag_key_scope="example-key",
///     exclude_resource_ids_scope="example-resource_id",
///     region_ids_scope="cn-hangzhou",
///     config_rule_trigger_types="ConfigurationItemChangeNotification",
///     resource_group_ids_scope=default.ids[0],
///     resource_types_scopes=["ACS::RDS::DBInstance"],
///     rule_name="contains-tag",
///     input_parameters={
///         "key1": "value1",
///         "key2": "value2",
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultRule = new AliCloud.Cfg.Rule("default", new()
///     {
///         Description = "If the resource matches one of the specified tag key-value pairs, the configuration is considered compliant.",
///         SourceOwner = "ALIYUN",
///         SourceIdentifier = "contains-tag",
///         RiskLevel = 1,
///         TagValueScope = "example-value",
///         TagKeyScope = "example-key",
///         ExcludeResourceIdsScope = "example-resource_id",
///         RegionIdsScope = "cn-hangzhou",
///         ConfigRuleTriggerTypes = "ConfigurationItemChangeNotification",
///         ResourceGroupIdsScope = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         ResourceTypesScopes = new[]
///         {
///             "ACS::RDS::DBInstance",
///         },
///         RuleName = "contains-tag",
///         InputParameters =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewRule(ctx, "default", &cfg.RuleArgs{
/// 			Description:             pulumi.String("If the resource matches one of the specified tag key-value pairs, the configuration is considered compliant."),
/// 			SourceOwner:             pulumi.String("ALIYUN"),
/// 			SourceIdentifier:        pulumi.String("contains-tag"),
/// 			RiskLevel:               pulumi.Int(1),
/// 			TagValueScope:           pulumi.String("example-value"),
/// 			TagKeyScope:             pulumi.String("example-key"),
/// 			ExcludeResourceIdsScope: pulumi.String("example-resource_id"),
/// 			RegionIdsScope:          pulumi.String("cn-hangzhou"),
/// 			ConfigRuleTriggerTypes:  pulumi.String("ConfigurationItemChangeNotification"),
/// 			ResourceGroupIdsScope:   pulumi.String(_default.Ids[0]),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("ACS::RDS::DBInstance"),
/// 			},
/// 			RuleName: pulumi.String("contains-tag"),
/// 			InputParameters: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.cfg.Rule;
/// import com.pulumi.alicloud.cfg.RuleArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .description("If the resource matches one of the specified tag key-value pairs, the configuration is considered compliant.")
///             .sourceOwner("ALIYUN")
///             .sourceIdentifier("contains-tag")
///             .riskLevel(1)
///             .tagValueScope("example-value")
///             .tagKeyScope("example-key")
///             .excludeResourceIdsScope("example-resource_id")
///             .regionIdsScope("cn-hangzhou")
///             .configRuleTriggerTypes("ConfigurationItemChangeNotification")
///             .resourceGroupIdsScope(default_.ids()[0])
///             .resourceTypesScopes("ACS::RDS::DBInstance")
///             .ruleName("contains-tag")
///             .inputParameters(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultRule:
///     type: alicloud:cfg:Rule
///     name: default
///     properties:
///       description: If the resource matches one of the specified tag key-value pairs, the configuration is considered compliant.
///       sourceOwner: ALIYUN
///       sourceIdentifier: contains-tag
///       riskLevel: 1
///       tagValueScope: example-value
///       tagKeyScope: example-key
///       excludeResourceIdsScope: example-resource_id
///       regionIdsScope: cn-hangzhou
///       configRuleTriggerTypes: ConfigurationItemChangeNotification
///       resourceGroupIdsScope: ${default.ids[0]}
///       resourceTypesScopes:
///         - ACS::RDS::DBInstance
///       ruleName: contains-tag
///       inputParameters:
///         key1: value1
///         key2: value2
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Config Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/rule:Rule example <id>
/// ```
class Rule extends pulumi.CustomResource {
  /// The ID of Alicloud account.
  late final pulumi.Output<int> accountId;
  /// compliance information.
  late final pulumi.Output<RuleCompliance> compliance;
  /// Compliance Package ID.
  late final pulumi.Output<String> compliancePackId;
  /// config rule arn.
  late final pulumi.Output<String> configRuleArn;
  /// The ID of the rule.
  late final pulumi.Output<String> configRuleId;
  /// The trigger type of the rule. Valid values:  `ConfigurationItemChangeNotification`: The rule is triggered upon configuration changes. `ScheduledNotification`: The rule is triggered as scheduled.
  late final pulumi.Output<String> configRuleTriggerTypes;
  /// The timestamp when the rule was created.
  late final pulumi.Output<int> createTime;
  /// The description of the rule.
  late final pulumi.Output<String?> description;
  /// The event source of the rule.
  late final pulumi.Output<String> eventSource;
  /// The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  late final pulumi.Output<String?> excludeResourceIdsScope;
  /// The settings of the input parameters for the rule.
  late final pulumi.Output<Map<String, String>?> inputParameters;
  /// The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`.
  late final pulumi.Output<String> maximumExecutionFrequency;
  /// The timestamp when the rule was last modified.
  late final pulumi.Output<int> modifiedTimestamp;
  /// The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  late final pulumi.Output<String?> regionIdsScope;
  /// The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  late final pulumi.Output<String?> resourceGroupIdsScope;
  /// The types of the resources to be evaluated against the rule.
  late final pulumi.Output<List<String>> resourceTypesScopes;
  /// The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info
  late final pulumi.Output<int> riskLevel;
  /// The name of the rule.
  late final pulumi.Output<String> ruleName;
  /// Field 'scope_compliance_resource_types' has been deprecated from provider version 1.124.1. New field 'resource_types_scope' instead.
  late final pulumi.Output<String> scopeComplianceResourceTypes;
  /// Field 'source_detail_message_type' has been deprecated from provider version 1.124.1. New field 'config_rule_trigger_types' instead.
  late final pulumi.Output<String> sourceDetailMessageType;
  /// The identifier of the rule.  For a managed rule, the value is the name of the managed rule. For a custom rule, the value is the ARN of the custom rule.
  late final pulumi.Output<String> sourceIdentifier;
  /// Field 'source_maximum_execution_frequency' has been deprecated from provider version 1.124.1. New field 'maximum_execution_frequency' instead.
  late final pulumi.Output<String> sourceMaximumExecutionFrequency;
  /// Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values:  `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule
  late final pulumi.Output<String> sourceOwner;
  /// The status of the rule. Valid values: ACTIVE: The rule is monitoring the configurations of target resources. DELETING_RESULTS: The compliance evaluation result returned by the rule is being deleted. EVALUATING: The rule is triggered and is evaluating whether the configurations of target resources are compliant. INACTIVE: The rule is disabled from monitoring the configurations of target resources.
  late final pulumi.Output<String> status;
  /// The rule monitors the tag key, only applies to rules created based on managed rules.
  late final pulumi.Output<String?> tagKeyScope;
  /// The rule monitors the tag value, only applies to rules created based on managed rules.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String?> tagValueScope;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_cfg_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<int>('accountId');
    this.compliance = registerOutput<RuleCompliance>('compliance');
    this.compliancePackId = registerOutput<String>('compliancePackId');
    this.configRuleArn = registerOutput<String>('configRuleArn');
    this.configRuleId = registerOutput<String>('configRuleId');
    this.configRuleTriggerTypes = registerOutput<String>('configRuleTriggerTypes');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.eventSource = registerOutput<String>('eventSource');
    this.excludeResourceIdsScope = registerOutput<String?>('excludeResourceIdsScope');
    this.inputParameters = registerOutput<Map<String, String>?>('inputParameters');
    this.maximumExecutionFrequency = registerOutput<String>('maximumExecutionFrequency');
    this.modifiedTimestamp = registerOutput<int>('modifiedTimestamp');
    this.regionIdsScope = registerOutput<String?>('regionIdsScope');
    this.resourceGroupIdsScope = registerOutput<String?>('resourceGroupIdsScope');
    this.resourceTypesScopes = registerOutput<List<String>>('resourceTypesScopes');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.ruleName = registerOutput<String>('ruleName');
    this.scopeComplianceResourceTypes = registerOutput<String>('scopeComplianceResourceTypes');
    this.sourceDetailMessageType = registerOutput<String>('sourceDetailMessageType');
    this.sourceIdentifier = registerOutput<String>('sourceIdentifier');
    this.sourceMaximumExecutionFrequency = registerOutput<String>('sourceMaximumExecutionFrequency');
    this.sourceOwner = registerOutput<String>('sourceOwner');
    this.status = registerOutput<String>('status');
    this.tagKeyScope = registerOutput<String?>('tagKeyScope');
    this.tagValueScope = registerOutput<String?>('tagValueScope');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<int>('accountId');
    this.compliance = registerOutput<RuleCompliance>('compliance');
    this.compliancePackId = registerOutput<String>('compliancePackId');
    this.configRuleArn = registerOutput<String>('configRuleArn');
    this.configRuleId = registerOutput<String>('configRuleId');
    this.configRuleTriggerTypes = registerOutput<String>('configRuleTriggerTypes');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.eventSource = registerOutput<String>('eventSource');
    this.excludeResourceIdsScope = registerOutput<String?>('excludeResourceIdsScope');
    this.inputParameters = registerOutput<Map<String, String>?>('inputParameters');
    this.maximumExecutionFrequency = registerOutput<String>('maximumExecutionFrequency');
    this.modifiedTimestamp = registerOutput<int>('modifiedTimestamp');
    this.regionIdsScope = registerOutput<String?>('regionIdsScope');
    this.resourceGroupIdsScope = registerOutput<String?>('resourceGroupIdsScope');
    this.resourceTypesScopes = registerOutput<List<String>>('resourceTypesScopes');
    this.riskLevel = registerOutput<int>('riskLevel');
    this.ruleName = registerOutput<String>('ruleName');
    this.scopeComplianceResourceTypes = registerOutput<String>('scopeComplianceResourceTypes');
    this.sourceDetailMessageType = registerOutput<String>('sourceDetailMessageType');
    this.sourceIdentifier = registerOutput<String>('sourceIdentifier');
    this.sourceMaximumExecutionFrequency = registerOutput<String>('sourceMaximumExecutionFrequency');
    this.sourceOwner = registerOutput<String>('sourceOwner');
    this.status = registerOutput<String>('status');
    this.tagKeyScope = registerOutput<String?>('tagKeyScope');
    this.tagValueScope = registerOutput<String?>('tagValueScope');
  }
}
