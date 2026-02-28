// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_not_and_cost_category.dart';
import 'get_cost_category_rule_rule_not_and_dimension.dart';
import 'get_cost_category_rule_rule_not_and_tag.dart';

class GetCostCategoryRuleRuleNotAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleNotAndCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotAndDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotAndTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleNotAnd].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleNotAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleNotAndCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleNotAndDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleNotAndTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleNotAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotAnd(
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAndCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleNotAndCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAndDimension>(
              map['dimensions'],
              (value) => GetCostCategoryRuleRuleNotAndDimension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAndTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleNotAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
