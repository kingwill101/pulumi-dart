// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_or_not_cost_category.dart';
import 'get_cost_category_rule_rule_or_not_dimension.dart';
import 'get_cost_category_rule_rule_or_not_tag.dart';

class GetCostCategoryRuleRuleOrNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleOrNotCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrNotDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrNotTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleOrNot].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleOrNot({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleOrNotCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleOrNotDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleOrNotTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleOrNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleOrNot(
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleOrNotCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleOrNotCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleOrNotDimension>(
              map['dimensions'],
              (value) => GetCostCategoryRuleRuleOrNotDimension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrNotTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleOrNotTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
