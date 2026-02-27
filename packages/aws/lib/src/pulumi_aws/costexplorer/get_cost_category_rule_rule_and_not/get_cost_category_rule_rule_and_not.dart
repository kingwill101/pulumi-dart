// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cost_category_rule_rule_and_not_cost_category/get_cost_category_rule_rule_and_not_cost_category.dart';
import '../get_cost_category_rule_rule_and_not_dimension/get_cost_category_rule_rule_and_not_dimension.dart';
import '../get_cost_category_rule_rule_and_not_tag/get_cost_category_rule_rule_and_not_tag.dart';

class GetCostCategoryRuleRuleAndNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleAndNotCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndNotDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndNotTag> tags;

  GetCostCategoryRuleRuleAndNot({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleAndNotCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleAndNotDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleAndNotTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleAndNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAndNot(
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNotCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleAndNotCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNotDimension>(
              map['dimensions'],
              (value) => GetCostCategoryRuleRuleAndNotDimension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNotTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleAndNotTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
