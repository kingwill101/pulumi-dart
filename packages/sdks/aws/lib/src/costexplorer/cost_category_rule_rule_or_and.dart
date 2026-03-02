// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_or_and_cost_category.dart';
import 'cost_category_rule_rule_or_and_dimension.dart';
import 'cost_category_rule_rule_or_and_tags.dart';

class CostCategoryRuleRuleOrAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleOrAndCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleOrAndDimension>? dimension;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleOrAndTags>? tags;

  /// Creates a new [CostCategoryRuleRuleOrAnd].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleOrAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrAndCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrAndDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrAndTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleOrAnd.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOrAnd(
      costCategory: map['costCategory'] == null ? null : ((CostCategoryRuleRuleOrAndCostCategory.fromMap((map['costCategory']! as Map).cast<String, dynamic>())).input()).input(),
      dimension: map['dimension'] == null ? null : ((CostCategoryRuleRuleOrAndDimension.fromMap((map['dimension']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((CostCategoryRuleRuleOrAndTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

