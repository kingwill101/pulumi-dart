import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_args.dart';
import 'cost_category_rule.dart';
import 'cost_category_split_charge_rule.dart';
import 'cost_category_state.dart';

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
///     rules: [
///         {
///             rule: {
///                 dimension: {
///                     key: "LINKED_ACCOUNT_NAME",
///                     values: ["-prod"],
///                     matchOptions: ["ENDS_WITH"],
///                 },
///             },
///             value: "production",
///         },
///         {
///             rule: {
///                 dimension: {
///                     key: "LINKED_ACCOUNT_NAME",
///                     values: ["-stg"],
///                     matchOptions: ["ENDS_WITH"],
///                 },
///             },
///             value: "staging",
///         },
///         {
///             rule: {
///                 dimension: {
///                     key: "LINKED_ACCOUNT_NAME",
///                     values: ["-dev"],
///                     matchOptions: ["ENDS_WITH"],
///                 },
///             },
///             value: "testing",
///         },
///     ],
///     name: "NAME",
///     ruleVersion: "CostCategoryExpression.v1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.CostCategory("test",
///     rules=[
///         {
///             "rule": {
///                 "dimension": {
///                     "key": "LINKED_ACCOUNT_NAME",
///                     "values": ["-prod"],
///                     "match_options": ["ENDS_WITH"],
///                 },
///             },
///             "value": "production",
///         },
///         {
///             "rule": {
///                 "dimension": {
///                     "key": "LINKED_ACCOUNT_NAME",
///                     "values": ["-stg"],
///                     "match_options": ["ENDS_WITH"],
///                 },
///             },
///             "value": "staging",
///         },
///         {
///             "rule": {
///                 "dimension": {
///                     "key": "LINKED_ACCOUNT_NAME",
///                     "values": ["-dev"],
///                     "match_options": ["ENDS_WITH"],
///                 },
///             },
///             "value": "testing",
///         },
///     ],
///     name="NAME",
///     rule_version="CostCategoryExpression.v1")
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
///         Rules = new[]
///         {
///             new Aws.CostExplorer.Inputs.CostCategoryRuleArgs
///             {
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
///                 Value = "production",
///             },
///             new Aws.CostExplorer.Inputs.CostCategoryRuleArgs
///             {
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
///                 Value = "staging",
///             },
///             new Aws.CostExplorer.Inputs.CostCategoryRuleArgs
///             {
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
///                 Value = "testing",
///             },
///         },
///         Name = "NAME",
///         RuleVersion = "CostCategoryExpression.v1",
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
/// 			Rules: costexplorer.CostCategoryRuleArray{
/// 				&costexplorer.CostCategoryRuleArgs{
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
/// 					Value: pulumi.String("production"),
/// 				},
/// 				&costexplorer.CostCategoryRuleArgs{
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
/// 					Value: pulumi.String("staging"),
/// 				},
/// 				&costexplorer.CostCategoryRuleArgs{
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
/// 					Value: pulumi.String("testing"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("NAME"),
/// 			RuleVersion: pulumi.String("CostCategoryExpression.v1"),
/// 		})
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
/// resource "aws_costexplorer_costcategory" "test" {
///   rules {
///     rule = {
///       dimension = {
///         key           = "LINKED_ACCOUNT_NAME"
///         values        = ["-prod"]
///         match_options = ["ENDS_WITH"]
///       }
///     }
///     value = "production"
///   }
///   rules {
///     rule = {
///       dimension = {
///         key           = "LINKED_ACCOUNT_NAME"
///         values        = ["-stg"]
///         match_options = ["ENDS_WITH"]
///       }
///     }
///     value = "staging"
///   }
///   rules {
///     rule = {
///       dimension = {
///         key           = "LINKED_ACCOUNT_NAME"
///         values        = ["-dev"]
///         match_options = ["ENDS_WITH"]
///       }
///     }
///     value = "testing"
///   }
///   name         = "NAME"
///   rule_version = "CostCategoryExpression.v1"
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
///         var test = new CostCategory("test", CostCategoryArgs.builder()
///             .rules(
///                 CostCategoryRuleArgs.builder()
///                     .rule(CostCategoryRuleRuleArgs.builder()
///                         .dimension(CostCategoryRuleRuleDimensionArgs.builder()
///                             .key("LINKED_ACCOUNT_NAME")
///                             .values("-prod")
///                             .matchOptions("ENDS_WITH")
///                             .build())
///                         .build())
///                     .value("production")
///                     .build(),
///                 CostCategoryRuleArgs.builder()
///                     .rule(CostCategoryRuleRuleArgs.builder()
///                         .dimension(CostCategoryRuleRuleDimensionArgs.builder()
///                             .key("LINKED_ACCOUNT_NAME")
///                             .values("-stg")
///                             .matchOptions("ENDS_WITH")
///                             .build())
///                         .build())
///                     .value("staging")
///                     .build(),
///                 CostCategoryRuleArgs.builder()
///                     .rule(CostCategoryRuleRuleArgs.builder()
///                         .dimension(CostCategoryRuleRuleDimensionArgs.builder()
///                             .key("LINKED_ACCOUNT_NAME")
///                             .values("-dev")
///                             .matchOptions("ENDS_WITH")
///                             .build())
///                         .build())
///                     .value("testing")
///                     .build())
///             .name("NAME")
///             .ruleVersion("CostCategoryExpression.v1")
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
///       rules:
///         - rule:
///             dimension:
///               key: LINKED_ACCOUNT_NAME
///               values:
///                 - -prod
///               matchOptions:
///                 - ENDS_WITH
///           value: production
///         - rule:
///             dimension:
///               key: LINKED_ACCOUNT_NAME
///               values:
///                 - -stg
///               matchOptions:
///                 - ENDS_WITH
///           value: staging
///         - rule:
///             dimension:
///               key: LINKED_ACCOUNT_NAME
///               values:
///                 - -dev
///               matchOptions:
///                 - ENDS_WITH
///           value: testing
///       name: NAME
///       ruleVersion: CostCategoryExpression.v1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Cost Explorer cost category.
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
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    defaultValue = registerOutput<String?>('defaultValue');
    effectiveEnd = registerOutput<String>('effectiveEnd');
    effectiveStart = registerOutput<String>('effectiveStart');
    this.name = registerOutput<String>('name');
    ruleVersion = registerOutput<String>('ruleVersion');
    rules = registerOutput<List<CostCategoryRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostCategoryRule>(guardedValue, (value) => CostCategoryRule.fromMap((value as Map).cast<String, dynamic>())); });
    splitChargeRules = registerOutput<List<CostCategorySplitChargeRule>?>('splitChargeRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostCategorySplitChargeRule>(guardedValue, (value) => CostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [CostCategory] resource's state with the given [name] and [id].
  static CostCategory get(
    String name,
    pulumi.Input<String> id, {
    CostCategoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CostCategory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CostCategory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costCategory:CostCategory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultValue = registerOutput<String?>('defaultValue');
    effectiveEnd = registerOutput<String>('effectiveEnd');
    effectiveStart = registerOutput<String>('effectiveStart');
    this.name = registerOutput<String>('name');
    ruleVersion = registerOutput<String>('ruleVersion');
    rules = registerOutput<List<CostCategoryRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostCategoryRule>(guardedValue, (value) => CostCategoryRule.fromMap((value as Map).cast<String, dynamic>())); });
    splitChargeRules = registerOutput<List<CostCategorySplitChargeRule>?>('splitChargeRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostCategorySplitChargeRule>(guardedValue, (value) => CostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [CostCategory] resource.
  CostCategory.reference(String urn)
    : super(
        'aws:costexplorer/costCategory:CostCategory',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    defaultValue = registerOutput<String?>('defaultValue');
    effectiveEnd = registerOutput<String>('effectiveEnd');
    effectiveStart = registerOutput<String>('effectiveStart');
    this.name = registerOutput<String>('name');
    ruleVersion = registerOutput<String>('ruleVersion');
    rules = registerOutput<List<CostCategoryRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostCategoryRule>(guardedValue, (value) => CostCategoryRule.fromMap((value as Map).cast<String, dynamic>())); });
    splitChargeRules = registerOutput<List<CostCategorySplitChargeRule>?>('splitChargeRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CostCategorySplitChargeRule>(guardedValue, (value) => CostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
