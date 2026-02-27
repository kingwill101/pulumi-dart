import 'package:pulumi/pulumi.dart';
import '../cost_category_rule/cost_category_rule.dart';
import '../cost_category_split_charge_rule/cost_category_split_charge_rule.dart';
import 'cost_category_args.dart';

/// Provides a CE Cost Category.
///
/// ## Example Usage
///
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
class CostCategory extends CustomResource {
  /// ARN of the cost category.
  late final Output<String> arn;

  /// Default value for the cost category.
  late final Output<String?> defaultValue;

  /// Effective end data of your Cost Category.
  late final Output<String> effectiveEnd;

  /// The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  late final Output<String> effectiveStart;

  /// Unique name for the Cost Category.
  late final Output<String> name;

  /// Rule schema version in this particular Cost Category.
  ///
  /// The following arguments are optional:
  late final Output<String> ruleVersion;

  /// Configuration block for the Cost Category rules used to categorize costs. See below.
  late final Output<List<CostCategoryRule>> rules;

  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  late final Output<List<CostCategorySplitChargeRule>?> splitChargeRules;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CostCategory(
    String name, {
    CostCategoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costCategory:CostCategory',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
