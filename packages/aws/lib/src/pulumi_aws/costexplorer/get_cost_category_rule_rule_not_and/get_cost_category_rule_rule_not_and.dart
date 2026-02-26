// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_not_and_cost_category/get_cost_category_rule_rule_not_and_cost_category.dart';
import '../get_cost_category_rule_rule_not_and_dimension/get_cost_category_rule_rule_not_and_dimension.dart';
import '../get_cost_category_rule_rule_not_and_tag/get_cost_category_rule_rule_not_and_tag.dart';

class GetCostCategoryRuleRuleNotAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleNotAndCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotAndDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotAndTag> tags;

  GetCostCategoryRuleRuleNotAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleNotAndCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleNotAndDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] = Input.encodeList<GetCostCategoryRuleRuleNotAndTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleNotAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotAnd(
      costCategories:
          Input.decodeList<GetCostCategoryRuleRuleNotAndCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleNotAndCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleNotAndDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleNotAndDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleNotAndTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleNotAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
