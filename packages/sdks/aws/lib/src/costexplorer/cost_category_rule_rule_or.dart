// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_or_and.dart';
import 'cost_category_rule_rule_or_cost_category.dart';
import 'cost_category_rule_rule_or_dimension.dart';
import 'cost_category_rule_rule_or_not.dart';
import 'cost_category_rule_rule_or_or.dart';
import 'cost_category_rule_rule_or_tags.dart';

class CostCategoryRuleRuleOr {
  /// Return results that match both `Dimension` objects.
  final pulumi.Input<List<CostCategoryRuleRuleOrAnd>>? ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleOrCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleOrDimension>? dimension;
  /// Return results that match both `Dimension` object.
  final pulumi.Input<CostCategoryRuleRuleOrNot>? not;
  /// Return results that match both `Dimension` object.
  final pulumi.Input<List<CostCategoryRuleRuleOrOr>>? ors;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleOrTags>? tags;

  /// Creates a new [CostCategoryRuleRuleOr].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const CostCategoryRuleRuleOr({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<CostCategoryRuleRuleOrAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<CostCategoryRuleRuleOrAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategory': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<CostCategoryRuleRuleOrOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<CostCategoryRuleRuleOrOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleOrTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleOr.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOr(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CostCategoryRuleRuleOrAnd>(guardedValue, (value) => CostCategoryRuleRuleOrAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CostCategoryRuleRuleOrOr>(guardedValue, (value) => CostCategoryRuleRuleOrOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CostCategoryRuleRuleOrTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
