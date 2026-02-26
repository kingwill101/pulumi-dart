// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_and_or_cost_category/get_cost_category_rule_rule_and_or_cost_category.dart';
import '../get_cost_category_rule_rule_and_or_dimension/get_cost_category_rule_rule_and_or_dimension.dart';
import '../get_cost_category_rule_rule_and_or_tag/get_cost_category_rule_rule_and_or_tag.dart';

class GetCostCategoryRuleRuleAndOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleAndOrCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndOrDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndOrTag> tags;

  GetCostCategoryRuleRuleAndOr({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleAndOrCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleAndOrDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] =
        Input.encodeList<GetCostCategoryRuleRuleAndOrTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleAndOr.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAndOr(
      costCategories:
          Input.decodeList<GetCostCategoryRuleRuleAndOrCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleAndOrCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleAndOrDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleAndOrDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleAndOrTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleAndOrTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
