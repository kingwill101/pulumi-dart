// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_or_and_cost_category/get_cost_category_rule_rule_or_and_cost_category.dart';
import '../get_cost_category_rule_rule_or_and_dimension/get_cost_category_rule_rule_or_and_dimension.dart';
import '../get_cost_category_rule_rule_or_and_tag/get_cost_category_rule_rule_or_and_tag.dart';

class GetCostCategoryRuleRuleOrAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleOrAndCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrAndDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrAndTag> tags;

  GetCostCategoryRuleRuleOrAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleOrAndCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleOrAndDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] =
        Input.encodeList<GetCostCategoryRuleRuleOrAndTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleOrAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleOrAnd(
      costCategories:
          Input.decodeList<GetCostCategoryRuleRuleOrAndCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleOrAndCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleOrAndDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleOrAndDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleOrAndTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleOrAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
