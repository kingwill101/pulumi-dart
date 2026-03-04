// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_or_or_cost_category.dart';
import 'cost_category_rule_rule_or_or_dimension.dart';
import 'cost_category_rule_rule_or_or_tags.dart';

class CostCategoryRuleRuleOrOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleOrOrCostCategory>? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleOrOrDimension>? dimension;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleOrOrTags>? tags;

  /// Creates a new [CostCategoryRuleRuleOrOr].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleOrOr({this.costCategory, this.dimension, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory':
          ?pulumi.Input.mapOptionalInputValue<
            CostCategoryRuleRuleOrOrCostCategory,
            Map<String, dynamic>
          >(costCategory, (value) => value.toMap()),
      'dimension':
          ?pulumi.Input.mapOptionalInputValue<
            CostCategoryRuleRuleOrOrDimension,
            Map<String, dynamic>
          >(dimension, (value) => value.toMap()),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            CostCategoryRuleRuleOrOrTags,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleOrOr.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOrOr(
      costCategory: (() {
        final guardedValue = map['costCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CostCategoryRuleRuleOrOrCostCategory.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dimension: (() {
        final guardedValue = map['dimension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CostCategoryRuleRuleOrOrDimension.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CostCategoryRuleRuleOrOrTags.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
