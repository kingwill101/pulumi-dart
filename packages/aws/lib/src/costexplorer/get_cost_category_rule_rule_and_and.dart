// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_and_and_cost_category.dart';
import 'get_cost_category_rule_rule_and_and_dimension.dart';
import 'get_cost_category_rule_rule_and_and_tag.dart';

class GetCostCategoryRuleRuleAndAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleAndAndCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndAndDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndAndTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleAndAnd].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleAndAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleAndAndCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleAndAndDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleAndAndTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleAndAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAndAnd(
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAndCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleAndAndCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAndDimension>(
              map['dimensions'],
              (value) => GetCostCategoryRuleRuleAndAndDimension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAndTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleAndAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
