// ignore_for_file: unused_element, unnecessary_cast

import 'cost_category_rule_rule_not_or_cost_category.dart';
import 'cost_category_rule_rule_not_or_dimension.dart';
import 'cost_category_rule_rule_not_or_tags.dart';

class CostCategoryRuleRuleNotOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleNotOrCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleNotOrDimension? dimension;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleNotOrTags? tags;

  /// Creates a new [CostCategoryRuleRuleNotOr].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleNotOr({this.costCategory, this.dimension, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleNotOr.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNotOr(
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleNotOrCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>(),
            ),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleNotOrDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleNotOrTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
