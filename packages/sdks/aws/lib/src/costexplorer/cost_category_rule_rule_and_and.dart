// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_and_and_cost_category.dart';
import 'cost_category_rule_rule_and_and_dimension.dart';
import 'cost_category_rule_rule_and_and_tags.dart';

class CostCategoryRuleRuleAndAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleAndAndCostCategory>? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleAndAndDimension>? dimension;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleAndAndTags>? tags;

  /// Creates a new [CostCategoryRuleRuleAndAnd].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleAndAnd({this.costCategory, this.dimension, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory':
          ?pulumi.Input.mapOptionalInputValue<
            CostCategoryRuleRuleAndAndCostCategory,
            Map<String, dynamic>
          >(costCategory, (value) => value.toMap()),
      'dimension':
          ?pulumi.Input.mapOptionalInputValue<
            CostCategoryRuleRuleAndAndDimension,
            Map<String, dynamic>
          >(dimension, (value) => value.toMap()),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            CostCategoryRuleRuleAndAndTags,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleAndAnd.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleAndAnd(
      costCategory: (() {
        final guardedValue = map['costCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CostCategoryRuleRuleAndAndCostCategory.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dimension: (() {
        final guardedValue = map['dimension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CostCategoryRuleRuleAndAndDimension.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CostCategoryRuleRuleAndAndTags.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
