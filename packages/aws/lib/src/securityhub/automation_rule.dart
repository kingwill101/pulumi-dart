import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action.dart';
import 'automation_rule_args.dart';
import 'automation_rule_criteria.dart';

/// Resource for managing an AWS Security Hub Automation Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.AutomationRule("example", {
///     description: "Elevate finding severity to CRITICAL when specific resources such as an S3 bucket is at risk",
///     ruleName: "Elevate severity of findings that relate to important resources",
///     ruleOrder: 1,
///     actions: [{
///         findingFieldsUpdate: {
///             severity: {
///                 label: "CRITICAL",
///                 product: 0,
///             },
///             note: {
///                 text: "This is a critical resource. Please review ASAP.",
///                 updatedBy: "sechub-automation",
///             },
///             types: ["Software and Configuration Checks/Industry and Regulatory Standards"],
///             userDefinedFields: {
///                 key: "value",
///             },
///         },
///         type: "FINDING_FIELDS_UPDATE",
///     }],
///     criteria: {
///         resourceIds: [{
///             comparison: "EQUALS",
///             value: "arn:aws:s3:::examplebucket/*",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.AutomationRule("example",
///     description="Elevate finding severity to CRITICAL when specific resources such as an S3 bucket is at risk",
///     rule_name="Elevate severity of findings that relate to important resources",
///     rule_order=1,
///     actions=[{
///         "finding_fields_update": {
///             "severity": {
///                 "label": "CRITICAL",
///                 "product": 0,
///             },
///             "note": {
///                 "text": "This is a critical resource. Please review ASAP.",
///                 "updated_by": "sechub-automation",
///             },
///             "types": ["Software and Configuration Checks/Industry and Regulatory Standards"],
///             "user_defined_fields": {
///                 "key": "value",
///             },
///         },
///         "type": "FINDING_FIELDS_UPDATE",
///     }],
///     criteria={
///         "resource_ids": [{
///             "comparison": "EQUALS",
///             "value": "arn:aws:s3:::examplebucket/*",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.AutomationRule("example", new()
///     {
///         Description = "Elevate finding severity to CRITICAL when specific resources such as an S3 bucket is at risk",
///         RuleName = "Elevate severity of findings that relate to important resources",
///         RuleOrder = 1,
///         Actions = new[]
///         {
///             new Aws.SecurityHub.Inputs.AutomationRuleActionArgs
///             {
///                 FindingFieldsUpdate = new Aws.SecurityHub.Inputs.AutomationRuleActionFindingFieldsUpdateArgs
///                 {
///                     Severity = new Aws.SecurityHub.Inputs.AutomationRuleActionFindingFieldsUpdateSeverityArgs
///                     {
///                         Label = "CRITICAL",
///                         Product = 0,
///                     },
///                     Note = new Aws.SecurityHub.Inputs.AutomationRuleActionFindingFieldsUpdateNoteArgs
///                     {
///                         Text = "This is a critical resource. Please review ASAP.",
///                         UpdatedBy = "sechub-automation",
///                     },
///                     Types = new[]
///                     {
///                         "Software and Configuration Checks/Industry and Regulatory Standards",
///                     },
///                     UserDefinedFields =
///                     {
///                         { "key", "value" },
///                     },
///                 },
///                 Type = "FINDING_FIELDS_UPDATE",
///             },
///         },
///         Criteria = new Aws.SecurityHub.Inputs.AutomationRuleCriteriaArgs
///         {
///             ResourceIds = new[]
///             {
///                 new Aws.SecurityHub.Inputs.AutomationRuleCriteriaResourceIdArgs
///                 {
///                     Comparison = "EQUALS",
///                     Value = "arn:aws:s3:::examplebucket/*",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityhub.NewAutomationRule(ctx, "example", &securityhub.AutomationRuleArgs{
/// 			Description: pulumi.String("Elevate finding severity to CRITICAL when specific resources such as an S3 bucket is at risk"),
/// 			RuleName:    pulumi.String("Elevate severity of findings that relate to important resources"),
/// 			RuleOrder:   pulumi.Int(1),
/// 			Actions: securityhub.AutomationRuleActionArray{
/// 				&securityhub.AutomationRuleActionArgs{
/// 					FindingFieldsUpdate: &securityhub.AutomationRuleActionFindingFieldsUpdateArgs{
/// 						Severity: &securityhub.AutomationRuleActionFindingFieldsUpdateSeverityArgs{
/// 							Label:   pulumi.String("CRITICAL"),
/// 							Product: pulumi.Float64(0),
/// 						},
/// 						Note: &securityhub.AutomationRuleActionFindingFieldsUpdateNoteArgs{
/// 							Text:      pulumi.String("This is a critical resource. Please review ASAP."),
/// 							UpdatedBy: pulumi.String("sechub-automation"),
/// 						},
/// 						Types: pulumi.StringArray{
/// 							pulumi.String("Software and Configuration Checks/Industry and Regulatory Standards"),
/// 						},
/// 						UserDefinedFields: pulumi.StringMap{
/// 							"key": pulumi.String("value"),
/// 						},
/// 					},
/// 					Type: pulumi.String("FINDING_FIELDS_UPDATE"),
/// 				},
/// 			},
/// 			Criteria: &securityhub.AutomationRuleCriteriaArgs{
/// 				ResourceIds: securityhub.AutomationRuleCriteriaResourceIdArray{
/// 					&securityhub.AutomationRuleCriteriaResourceIdArgs{
/// 						Comparison: pulumi.String("EQUALS"),
/// 						Value:      pulumi.String("arn:aws:s3:::examplebucket/*"),
/// 					},
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
/// import com.pulumi.aws.securityhub.AutomationRule;
/// import com.pulumi.aws.securityhub.AutomationRuleArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleActionArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleActionFindingFieldsUpdateArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleActionFindingFieldsUpdateSeverityArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleActionFindingFieldsUpdateNoteArgs;
/// import com.pulumi.aws.securityhub.inputs.AutomationRuleCriteriaArgs;
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
///         var example = new AutomationRule("example", AutomationRuleArgs.builder()
///             .description("Elevate finding severity to CRITICAL when specific resources such as an S3 bucket is at risk")
///             .ruleName("Elevate severity of findings that relate to important resources")
///             .ruleOrder(1)
///             .actions(AutomationRuleActionArgs.builder()
///                 .findingFieldsUpdate(AutomationRuleActionFindingFieldsUpdateArgs.builder()
///                     .severity(AutomationRuleActionFindingFieldsUpdateSeverityArgs.builder()
///                         .label("CRITICAL")
///                         .product(0.0)
///                         .build())
///                     .note(AutomationRuleActionFindingFieldsUpdateNoteArgs.builder()
///                         .text("This is a critical resource. Please review ASAP.")
///                         .updatedBy("sechub-automation")
///                         .build())
///                     .types("Software and Configuration Checks/Industry and Regulatory Standards")
///                     .userDefinedFields(Map.of("key", "value"))
///                     .build())
///                 .type("FINDING_FIELDS_UPDATE")
///                 .build())
///             .criteria(AutomationRuleCriteriaArgs.builder()
///                 .resourceIds(AutomationRuleCriteriaResourceIdArgs.builder()
///                     .comparison("EQUALS")
///                     .value("arn:aws:s3:::examplebucket/*")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:AutomationRule
///     properties:
///       description: Elevate finding severity to CRITICAL when specific resources such as an S3 bucket is at risk
///       ruleName: Elevate severity of findings that relate to important resources
///       ruleOrder: 1
///       actions:
///         - findingFieldsUpdate:
///             severity:
///               label: CRITICAL
///               product: '0.0'
///             note:
///               text: This is a critical resource. Please review ASAP.
///               updatedBy: sechub-automation
///             types:
///               - Software and Configuration Checks/Industry and Regulatory Standards
///             userDefinedFields:
///               key: value
///           type: FINDING_FIELDS_UPDATE
///       criteria:
///         resourceIds:
///           - comparison: EQUALS
///             value: arn:aws:s3:::examplebucket/*
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Security Hub automation rule.
///
///
/// Using `pulumi import`, import Security Hub automation rule using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/automationRule:AutomationRule example arn:aws:securityhub:us-west-2:123456789012:automation-rule/473eddde-f5c4-4ae5-85c7-e922f271fffc
/// ```
class AutomationRule extends pulumi.CustomResource {
  /// A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  late final pulumi.Output<List<AutomationRuleAction>> actions;

  /// The ARN of the Security Hub automation rule.
  late final pulumi.Output<String> arn;

  /// A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  late final pulumi.Output<AutomationRuleCriteria> criteria;

  /// The description of the rule.
  late final pulumi.Output<String> description;

  /// Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to `false`.
  late final pulumi.Output<bool> isTerminal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the rule.
  late final pulumi.Output<String> ruleName;

  /// An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  late final pulumi.Output<int> ruleOrder;

  /// Whether the rule is active after it is created.
  late final pulumi.Output<String> ruleStatus;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AutomationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomationRule]. {@macro pulumi_securityhub_automation_rule_automation_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomationRule(
    String name, {
    AutomationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/automationRule:AutomationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<AutomationRuleAction>>('actions');
    this.arn = registerOutput<String>('arn');
    this.criteria = registerOutput<AutomationRuleCriteria>('criteria');
    this.description = registerOutput<String>('description');
    this.isTerminal = registerOutput<bool>('isTerminal');
    this.region = registerOutput<String>('region');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleOrder = registerOutput<int>('ruleOrder');
    this.ruleStatus = registerOutput<String>('ruleStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
