// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_not_or_cost_category/get_cost_category_rule_rule_not_or_cost_category.dart';
import '../get_cost_category_rule_rule_not_or_dimension/get_cost_category_rule_rule_not_or_dimension.dart';
import '../get_cost_category_rule_rule_not_or_tag/get_cost_category_rule_rule_not_or_tag.dart';

class GetCostCategoryRuleRuleNotOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleNotOrCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotOrDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotOrTag> tags;

  GetCostCategoryRuleRuleNotOr({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleNotOrCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleNotOrDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] =
        Input.encodeList<GetCostCategoryRuleRuleNotOrTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleNotOr.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotOr(
      costCategories:
          Input.decodeList<GetCostCategoryRuleRuleNotOrCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleNotOrCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleNotOrDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleNotOrDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleNotOrTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleNotOrTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
