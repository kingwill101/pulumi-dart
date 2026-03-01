// ignore_for_file: unused_element, unnecessary_cast

import 'cost_category_rule_rule_or_not_cost_category.dart';
import 'cost_category_rule_rule_or_not_dimension.dart';
import 'cost_category_rule_rule_or_not_tags.dart';

class CostCategoryRuleRuleOrNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleOrNotCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleOrNotDimension? dimension;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleOrNotTags? tags;

  /// Creates a new [CostCategoryRuleRuleOrNot].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleOrNot({this.costCategory, this.dimension, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleOrNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOrNot(
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleOrNotCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>(),
            ),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleOrNotDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleOrNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
