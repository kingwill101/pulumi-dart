// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_or_not_cost_category.dart';
import 'cost_category_rule_rule_or_not_dimension.dart';
import 'cost_category_rule_rule_or_not_tags.dart';

class CostCategoryRuleRuleOrNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleOrNotCostCategory?>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleOrNotDimension?>? dimension;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleOrNotTags?>? tags;

  /// Creates a new [CostCategoryRuleRuleOrNot].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const CostCategoryRuleRuleOrNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrNotCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrNotDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleOrNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOrNot(
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrNotCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrNotDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrNotTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
