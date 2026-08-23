import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_v2_action.dart';
import 'automation_rule_v2_args.dart';
import 'automation_rule_v2_criteria.dart';
import 'automation_rule_v2_state.dart';

/// Manages a Security Hub V2 Automation Rule, which automatically updates or takes action on findings that match specified criteria.
///
/// &gt; **NOTE:** Automation rules must be created in the aggregation (home) region. A Security Hub V2 Aggregator (`aws.securityhub.AggregatorV2`) must exist before creating automation rules.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.AccountV2("example", {});
/// const exampleAggregatorV2 = new aws.securityhub.AggregatorV2("example", {regionLinkingMode: "ALL_REGIONS"}, {
///     dependsOn: [example],
/// });
/// const exampleAutomationRuleV2 = new aws.securityhub.AutomationRuleV2("example", {
///     ruleName: "suppress-guardduty-low",
///     description: "Suppress low severity GuardDuty findings",
///     ruleOrder: 100,
///     ruleStatus: "ENABLED",
///     criteria: {
///         ocsfFindingCriteriaJson: JSON.stringify({
///             CompositeFilters: [{
///                 StringFilters: [{
///                     FieldName: "metadata.product.name",
///                     Filter: {
///                         Comparison: "EQUALS",
///                         Value: "GuardDuty",
///                     },
///                 }],
///             }],
///             CompositeOperator: "AND",
///         }),
///     },
///     action: {
///         type: "FINDING_FIELDS_UPDATE",
///         findingFieldsUpdate: {
///             severityId: 99,
///             statusId: 3,
///             comment: "Low severity GuardDuty finding suppressed",
///         },
///     },
/// }, {
///     dependsOn: [exampleAggregatorV2],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.securityhub.AccountV2("example")
/// example_aggregator_v2 = aws.securityhub.AggregatorV2("example", region_linking_mode="ALL_REGIONS",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_automation_rule_v2 = aws.securityhub.AutomationRuleV2("example",
///     rule_name="suppress-guardduty-low",
///     description="Suppress low severity GuardDuty findings",
///     rule_order=float(100),
///     rule_status="ENABLED",
///     criteria={
///         "ocsf_finding_criteria_json": json.dumps({
///             "CompositeFilters": [{
///                 "StringFilters": [{
///                     "FieldName": "metadata.product.name",
///                     "Filter": {
///                         "Comparison": "EQUALS",
///                         "Value": "GuardDuty",
///                     },
///                 }],
///             }],
///             "CompositeOperator": "AND",
///         }),
///     },
///     action={
///         "type": "FINDING_FIELDS_UPDATE",
///         "finding_fields_update": {
///             "severity_id": 99,
///             "status_id": 3,
///             "comment": "Low severity GuardDuty finding suppressed",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aggregator_v2]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.AccountV2("example");
///
///     var exampleAggregatorV2 = new Aws.SecurityHub.AggregatorV2("example", new()
///     {
///         RegionLinkingMode = "ALL_REGIONS",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var exampleAutomationRuleV2 = new Aws.SecurityHub.AutomationRuleV2("example", new()
///     {
///         RuleName = "suppress-guardduty-low",
///         Description = "Suppress low severity GuardDuty findings",
///         RuleOrder = 100,
///         RuleStatus = "ENABLED",
///         Criteria = new Aws.SecurityHub.Inputs.AutomationRuleV2CriteriaArgs
///         {
///             OcsfFindingCriteriaJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["CompositeFilters"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["StringFilters"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["FieldName"] = "metadata.product.name",
///                                 ["Filter"] = new Dictionary<string, object?>
///                                 {
///                                     ["Comparison"] = "EQUALS",
///                                     ["Value"] = "GuardDuty",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ["CompositeOperator"] = "AND",
///             }),
///         },
///         Action = new Aws.SecurityHub.Inputs.AutomationRuleV2ActionArgs
///         {
///             Type = "FINDING_FIELDS_UPDATE",
///             FindingFieldsUpdate = new Aws.SecurityHub.Inputs.AutomationRuleV2ActionFindingFieldsUpdateArgs
///             {
///                 SeverityId = 99,
///                 StatusId = 3,
///                 Comment = "Low severity GuardDuty finding suppressed",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAggregatorV2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccountV2(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAggregatorV2, err := securityhub.NewAggregatorV2(ctx, "example", &securityhub.AggregatorV2Args{
/// 			RegionLinkingMode: pulumi.String("ALL_REGIONS"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"CompositeFilters": []map[string][]map[string]interface{}{
/// 				map[string][]map[string]interface{}{
/// 					"StringFilters": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"FieldName": "metadata.product.name",
/// 							"Filter": map[string]string{
/// 								"Comparison": "EQUALS",
/// 								"Value":      "GuardDuty",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"CompositeOperator": "AND",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = securityhub.NewAutomationRuleV2(ctx, "example", &securityhub.AutomationRuleV2Args{
/// 			RuleName:    pulumi.String("suppress-guardduty-low"),
/// 			Description: pulumi.String("Suppress low severity GuardDuty findings"),
/// 			RuleOrder:   pulumi.Float64(100),
/// 			RuleStatus:  pulumi.String("ENABLED"),
/// 			Criteria: &securityhub.AutomationRuleV2CriteriaArgs{
/// 				OcsfFindingCriteriaJson: pulumi.String(json0),
/// 			},
/// 			Action: &securityhub.AutomationRuleV2ActionArgs{
/// 				Type: pulumi.String("FINDING_FIELDS_UPDATE"),
/// 				FindingFieldsUpdate: &securityhub.AutomationRuleV2ActionFindingFieldsUpdateArgs{
/// 					SeverityId: pulumi.Int(99),
/// 					StatusId:   pulumi.Int(3),
/// 					Comment:    pulumi.String("Low severity GuardDuty finding suppressed"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAggregatorV2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_securityhub_accountv2" "example" {
/// }
/// resource "aws_securityhub_aggregatorv2" "example" {
///   depends_on          = [aws_securityhub_accountv2.example]
///   region_linking_mode = "ALL_REGIONS"
/// }
/// resource "aws_securityhub_automationrulev2" "example" {
///   depends_on  = [aws_securityhub_aggregatorv2.example]
///   rule_name   = "suppress-guardduty-low"
///   description = "Suppress low severity GuardDuty findings"
///   rule_order  = 100
///   rule_status = "ENABLED"
///   criteria = {
///     ocsf_finding_criteria_json = jsonencode({
///       "CompositeFilters" = [{
///         "StringFilters" = [{
///           "FieldName" = "metadata.product.name"
///           "Filter" = {
///             "Comparison" = "EQUALS"
///             "Value"      = "GuardDuty"
///           }
///         }]
///       }]
///       "CompositeOperator" = "AND"
///     })
///   }
///   action = {
///     type = "FINDING_FIELDS_UPDATE"
///     finding_fields_update = {
///       severity_id = 99
///       status_id   = 3
///       comment     = "Low severity GuardDuty finding suppressed"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.AccountV2;
/// import com.pulumi.aws.securityhub.AggregatorV2;
/// import com.pulumi.aws.securityhub.AggregatorV2Args;
/// import com.pulumi.aws.securityhub.AutomationRuleV2;
/// import com.pulumi.aws.securityhub.AutomationRuleV2Args;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleV2CriteriaArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleV2ActionArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleV2ActionFindingFieldsUpdateArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AccountV2("example");
///
///         var exampleAggregatorV2 = new AggregatorV2("exampleAggregatorV2", AggregatorV2Args.builder()
///             .regionLinkingMode("ALL_REGIONS")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleAutomationRuleV2 = new AutomationRuleV2("exampleAutomationRuleV2", AutomationRuleV2Args.builder()
///             .ruleName("suppress-guardduty-low")
///             .description("Suppress low severity GuardDuty findings")
///             .ruleOrder(100.0)
///             .ruleStatus("ENABLED")
///             .criteria(AutomationRuleV2CriteriaArgs.builder()
///                 .ocsfFindingCriteriaJson(serializeJson(
///                     jsonObject(
///                         jsonProperty("CompositeFilters", jsonArray(jsonObject(
///                             jsonProperty("StringFilters", jsonArray(jsonObject(
///                                 jsonProperty("FieldName", "metadata.product.name"),
///                                 jsonProperty("Filter", jsonObject(
///                                     jsonProperty("Comparison", "EQUALS"),
///                                     jsonProperty("Value", "GuardDuty")
///                                 ))
///                             )))
///                         ))),
///                         jsonProperty("CompositeOperator", "AND")
///                     )))
///                 .build())
///             .action(AutomationRuleV2ActionArgs.builder()
///                 .type("FINDING_FIELDS_UPDATE")
///                 .findingFieldsUpdate(AutomationRuleV2ActionFindingFieldsUpdateArgs.builder()
///                     .severityId(99)
///                     .statusId(3)
///                     .comment("Low severity GuardDuty finding suppressed")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAggregatorV2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:AccountV2
///   exampleAggregatorV2:
///     type: aws:securityhub:AggregatorV2
///     name: example
///     properties:
///       regionLinkingMode: ALL_REGIONS
///     options:
///       dependsOn:
///         - ${example}
///   exampleAutomationRuleV2:
///     type: aws:securityhub:AutomationRuleV2
///     name: example
///     properties:
///       ruleName: suppress-guardduty-low
///       description: Suppress low severity GuardDuty findings
///       ruleOrder: 100
///       ruleStatus: ENABLED
///       criteria:
///         ocsfFindingCriteriaJson:
///           fn::toJSON:
///             CompositeFilters:
///               - StringFilters:
///                   - FieldName: metadata.product.name
///                     Filter:
///                       Comparison: EQUALS
///                       Value: GuardDuty
///             CompositeOperator: AND
///       action:
///         type: FINDING_FIELDS_UPDATE
///         findingFieldsUpdate:
///           severityId: 99
///           statusId: 3
///           comment: Low severity GuardDuty finding suppressed
///     options:
///       dependsOn:
///         - ${exampleAggregatorV2}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Security Hub V2 automation rule.
///
///
/// Using `pulumi import`, import Security Hub V2 automation rules using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/automationRuleV2:AutomationRuleV2 example arn:aws:securityhub:us-east-1:123456789012:automation-rulev2/3efb04f4-e19e-4458-a698-62364ab7b1a7
/// ```
class AutomationRuleV2 extends pulumi.CustomResource {
  /// Actions to take when the rule matches. Maximum of 1 action block. See `action` below.
  late final pulumi.Output<AutomationRuleV2Action> action;
  late final pulumi.Output<String> arn;
  /// Filtering type and configuration of the automation rule. See `criteria` below.
  late final pulumi.Output<AutomationRuleV2Criteria> criteria;
  /// A description of the automation rule.
  late final pulumi.Output<String> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the automation rule.
  late final pulumi.Output<String> ruleId;
  /// The name of the automation rule.
  late final pulumi.Output<String> ruleName;
  /// The priority of the rule. Lower values indicate higher priority.
  late final pulumi.Output<double> ruleOrder;
  /// The status of the rule. Valid values: `ENABLED`, `DISABLED`. Defaults to `ENABLED`.
  late final pulumi.Output<String> ruleStatus;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AutomationRuleV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomationRuleV2]. {@macro pulumi_securityhub_automation_rule_v2_automation_rule_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomationRuleV2(
    String name, {
    AutomationRuleV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/automationRuleV2:AutomationRuleV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<AutomationRuleV2Action>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationRuleV2Action.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    criteria = registerOutput<AutomationRuleV2Criteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationRuleV2Criteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    ruleName = registerOutput<String>('ruleName');
    ruleOrder = registerOutput<double>('ruleOrder');
    ruleStatus = registerOutput<String>('ruleStatus');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AutomationRuleV2] resource's state with the given [name] and [id].
  static AutomationRuleV2 get(
    String name,
    pulumi.Input<String> id, {
    AutomationRuleV2State? state,
  }) {
    return AutomationRuleV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutomationRuleV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/automationRuleV2:AutomationRuleV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<AutomationRuleV2Action>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationRuleV2Action.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    criteria = registerOutput<AutomationRuleV2Criteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomationRuleV2Criteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    ruleName = registerOutput<String>('ruleName');
    ruleOrder = registerOutput<double>('ruleOrder');
    ruleStatus = registerOutput<String>('ruleStatus');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
