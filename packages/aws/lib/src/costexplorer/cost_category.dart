import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_args.dart';
import 'cost_category_rule.dart';
import 'cost_category_split_charge_rule.dart';

/// Provides a CE Cost Category.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.costexplorer.CostCategory("test", {
///     name: "NAME",
///     ruleVersion: "CostCategoryExpression.v1",
///     rules: [
///         {
///             value: "production",
///             rule: {
///                 dimension: {
///                     key: "LINKED_ACCOUNT_NAME",
///                     values: ["-prod"],
///                     matchOptions: ["ENDS_WITH"],
///                 },
///             },
///         },
///         {
///             value: "staging",
///             rule: {
///                 dimension: {
///                     key: "LINKED_ACCOUNT_NAME",
///                     values: ["-stg"],
///                     matchOptions: ["ENDS_WITH"],
///                 },
///             },
///         },
///         {
///             value: "testing",
///             rule: {
///                 dimension: {
///                     key: "LINKED_ACCOUNT_NAME",
///                     values: ["-dev"],
///                     matchOptions: ["ENDS_WITH"],
///                 },
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.CostCategory("test",
///     name="NAME",
///     rule_version="CostCategoryExpression.v1",
///     rules=[
///         {
///             "value": "production",
///             "rule": {
///                 "dimension": {
///                     "key": "LINKED_ACCOUNT_NAME",
///                     "values": ["-prod"],
///                     "match_options": ["ENDS_WITH"],
///                 },
///             },
///         },
///         {
///             "value": "staging",
///             "rule": {
///                 "dimension": {
///                     "key": "LINKED_ACCOUNT_NAME",
///                     "values": ["-stg"],
///                     "match_options": ["ENDS_WITH"],
///                 },
///             },
///         },
///         {
///             "value": "testing",
///             "rule": {
///                 "dimension": {
///                     "key": "LINKED_ACCOUNT_NAME",
///                     "values": ["-dev"],
///                     "match_options": ["ENDS_WITH"],
///                 },
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CostExplorer.CostCategory("test", new()
///     {
///         Name = "NAME",
///         RuleVersion = "CostCategoryExpression.v1",
///         Rules = new[]
///         {
///             new Aws.CostExplorer.Inputs.CostCategoryRuleArgs
///             {
///                 Value = "production",
///                 Rule = new Aws.CostExplorer.Inputs.CostCategoryRuleRuleArgs
///                 {
///                     Dimension = new Aws.CostExplorer.Inputs.CostCategoryRuleRuleDimensionArgs
///                     {
///                         Key = "LINKED_ACCOUNT_NAME",
///                         Values = new[]
///                         {
///                             "-prod",
///                         },
///                         MatchOptions = new[]
///                         {
///                             "ENDS_WITH",
///                         },
///                     },
///                 },
///             },
///             new Aws.CostExplorer.Inputs.CostCategoryRuleArgs
///             {
///                 Value = "staging",
///                 Rule = new Aws.CostExplorer.Inputs.CostCategoryRuleRuleArgs
///                 {
///                     Dimension = new Aws.CostExplorer.Inputs.CostCategoryRuleRuleDimensionArgs
///                     {
///                         Key = "LINKED_ACCOUNT_NAME",
///                         Values = new[]
///                         {
///                             "-stg",
///                         },
///                         MatchOptions = new[]
///                         {
///                             "ENDS_WITH",
///                         },
///                     },
///                 },
///             },
///             new Aws.CostExplorer.Inputs.CostCategoryRuleArgs
///             {
///                 Value = "testing",
///                 Rule = new Aws.CostExplorer.Inputs.CostCategoryRuleRuleArgs
///                 {
///                     Dimension = new Aws.CostExplorer.Inputs.CostCategoryRuleRuleDimensionArgs
///                     {
///                         Key = "LINKED_ACCOUNT_NAME",
///                         Values = new[]
///                         {
///                             "-dev",
///                         },
///                         MatchOptions = new[]
///                         {
///                             "ENDS_WITH",
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costexplorer.NewCostCategory(ctx, "test", &costexplorer.CostCategoryArgs{
/// 			Name:        pulumi.String("NAME"),
/// 			RuleVersion: pulumi.String("CostCategoryExpression.v1"),
/// 			Rules: costexplorer.CostCategoryRuleArray{
/// 				&costexplorer.CostCategoryRuleArgs{
/// 					Value: pulumi.String("production"),
/// 					Rule: &costexplorer.CostCategoryRuleRuleArgs{
/// 						Dimension: &costexplorer.CostCategoryRuleRuleDimensionArgs{
/// 							Key: pulumi.String("LINKED_ACCOUNT_NAME"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("-prod"),
/// 							},
/// 							MatchOptions: pulumi.StringArray{
/// 								pulumi.String("ENDS_WITH"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&costexplorer.CostCategoryRuleArgs{
/// 					Value: pulumi.String("staging"),
/// 					Rule: &costexplorer.CostCategoryRuleRuleArgs{
/// 						Dimension: &costexplorer.CostCategoryRuleRuleDimensionArgs{
/// 							Key: pulumi.String("LINKED_ACCOUNT_NAME"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("-stg"),
/// 							},
/// 							MatchOptions: pulumi.StringArray{
/// 								pulumi.String("ENDS_WITH"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&costexplorer.CostCategoryRuleArgs{
/// 					Value: pulumi.String("testing"),
/// 					Rule: &costexplorer.CostCategoryRuleRuleArgs{
/// 						Dimension: &costexplorer.CostCategoryRuleRuleDimensionArgs{
/// 							Key: pulumi.String("LINKED_ACCOUNT_NAME"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("-dev"),
/// 							},
/// 							MatchOptions: pulumi.StringArray{
/// 								pulumi.String("ENDS_WITH"),
/// 							},
/// 						},
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
/// import com.pulumi.aws.costexplorer.CostCategory;
/// import com.pulumi.aws.costexplorer.CostCategoryArgs;
/// import com.pulumi.aws.costexplorer.inputs.CostCategoryRuleArgs;
/// import com.pulumi.aws.costexplorer.inputs.CostCategoryRuleRuleArgs;
/// import com.pulumi.aws.costexplorer.inputs.CostCategoryRuleRuleDimensionArgs;
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
///         var test = new CostCategory("test", CostCategoryArgs.builder()
///             .name("NAME")
///             .ruleVersion("CostCategoryExpression.v1")
///             .rules(
///                 CostCategoryRuleArgs.builder()
///                     .value("production")
///                     .rule(CostCategoryRuleRuleArgs.builder()
///                         .dimension(CostCategoryRuleRuleDimensionArgs.builder()
///                             .key("LINKED_ACCOUNT_NAME")
///                             .values("-prod")
///                             .matchOptions("ENDS_WITH")
///                             .build())
///                         .build())
///                     .build(),
///                 CostCategoryRuleArgs.builder()
///                     .value("staging")
///                     .rule(CostCategoryRuleRuleArgs.builder()
///                         .dimension(CostCategoryRuleRuleDimensionArgs.builder()
///                             .key("LINKED_ACCOUNT_NAME")
///                             .values("-stg")
///                             .matchOptions("ENDS_WITH")
///                             .build())
///                         .build())
///                     .build(),
///                 CostCategoryRuleArgs.builder()
///                     .value("testing")
///                     .rule(CostCategoryRuleRuleArgs.builder()
///                         .dimension(CostCategoryRuleRuleDimensionArgs.builder()
///                             .key("LINKED_ACCOUNT_NAME")
///                             .values("-dev")
///                             .matchOptions("ENDS_WITH")
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:costexplorer:CostCategory
///     properties:
///       name: NAME
///       ruleVersion: CostCategoryExpression.v1
///       rules:
///         - value: production
///           rule:
///             dimension:
///               key: LINKED_ACCOUNT_NAME
///               values:
///                 - -prod
///               matchOptions:
///                 - ENDS_WITH
///         - value: staging
///           rule:
///             dimension:
///               key: LINKED_ACCOUNT_NAME
///               values:
///                 - -stg
///               matchOptions:
///                 - ENDS_WITH
///         - value: testing
///           rule:
///             dimension:
///               key: LINKED_ACCOUNT_NAME
///               values:
///                 - -dev
///               matchOptions:
///                 - ENDS_WITH
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Cost Explorer cost category.
///
///
/// Using `pulumi import`, import `aws.costexplorer.CostCategory` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/costCategory:CostCategory example costCategoryARN
/// ```
class CostCategory extends pulumi.CustomResource {
  /// ARN of the cost category.
  late final pulumi.Output<String> arn;

  /// Default value for the cost category.
  late final pulumi.Output<String?> defaultValue;

  /// Effective end data of your Cost Category.
  late final pulumi.Output<String> effectiveEnd;

  /// The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  late final pulumi.Output<String> effectiveStart;

  /// Unique name for the Cost Category.
  late final pulumi.Output<String> name;

  /// Rule schema version in this particular Cost Category.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ruleVersion;

  /// Configuration block for the Cost Category rules used to categorize costs. See below.
  late final pulumi.Output<List<CostCategoryRule>> rules;

  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  late final pulumi.Output<List<CostCategorySplitChargeRule>?> splitChargeRules;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CostCategory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CostCategory]. {@macro pulumi_costexplorer_cost_category_cost_category_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CostCategory(
    String name, {
    CostCategoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costCategory:CostCategory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultValue = registerOutput<String?>('defaultValue');
    this.effectiveEnd = registerOutput<String>('effectiveEnd');
    this.effectiveStart = registerOutput<String>('effectiveStart');
    this.name = registerOutput<String>('name');
    this.ruleVersion = registerOutput<String>('ruleVersion');
    this.rules = registerOutput<List<CostCategoryRule>>('rules');
    this.splitChargeRules =
        registerOutput<List<CostCategorySplitChargeRule>?>('splitChargeRules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
