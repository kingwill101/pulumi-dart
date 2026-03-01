// ignore_for_file: unused_element, unnecessary_cast

import 'cost_category_rule_rule_not_and_cost_category.dart';
import 'cost_category_rule_rule_not_and_dimension.dart';
import 'cost_category_rule_rule_not_and_tags.dart';

class CostCategoryRuleRuleNotAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleNotAndCostCategory? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleNotAndDimension? dimension;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleNotAndTags? tags;

  /// Creates a new [CostCategoryRuleRuleNotAnd].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleNotAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleNotAnd.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNotAnd(
      costCategory: map['costCategory'] == null ? null : CostCategoryRuleRuleNotAndCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null ? null : CostCategoryRuleRuleNotAndDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : CostCategoryRuleRuleNotAndTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

