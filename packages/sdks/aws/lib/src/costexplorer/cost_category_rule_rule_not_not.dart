// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_not_not_cost_category.dart';
import 'cost_category_rule_rule_not_not_dimension.dart';
import 'cost_category_rule_rule_not_not_tags.dart';

class CostCategoryRuleRuleNotNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleNotNotCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleNotNotDimension>? dimension;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleNotNotTags>? tags;

  /// Creates a new [CostCategoryRuleRuleNotNot].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const CostCategoryRuleRuleNotNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotNotCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotNotDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleNotNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNotNot(
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleNotNotCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleNotNotDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleNotNotTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
