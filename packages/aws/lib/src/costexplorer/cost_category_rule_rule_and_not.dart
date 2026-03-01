// ignore_for_file: unused_element, unnecessary_cast

import 'cost_category_rule_rule_and_not_cost_category.dart';
import 'cost_category_rule_rule_and_not_dimension.dart';
import 'cost_category_rule_rule_and_not_tags.dart';

class CostCategoryRuleRuleAndNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleAndNotCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleAndNotDimension? dimension;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleAndNotTags? tags;

  /// Creates a new [CostCategoryRuleRuleAndNot].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleAndNot({this.costCategory, this.dimension, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleAndNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleAndNot(
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleAndNotCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>(),
            ),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleAndNotDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleAndNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
