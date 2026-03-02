// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_not_and.dart';
import 'cost_category_rule_rule_not_cost_category.dart';
import 'cost_category_rule_rule_not_dimension.dart';
import 'cost_category_rule_rule_not_not.dart';
import 'cost_category_rule_rule_not_or.dart';
import 'cost_category_rule_rule_not_tags.dart';

class CostCategoryRuleRuleNot {
  /// Return results that match both `Dimension` objects.
  final pulumi.Input<List<CostCategoryRuleRuleNotAnd>>? ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<CostCategoryRuleRuleNotCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<CostCategoryRuleRuleNotDimension>? dimension;
  /// Return results that match both `Dimension` object.
  final pulumi.Input<CostCategoryRuleRuleNotNot>? not;
  /// Return results that match both `Dimension` object.
  final pulumi.Input<List<CostCategoryRuleRuleNotOr>>? ors;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<CostCategoryRuleRuleNotTags>? tags;

  /// Creates a new [CostCategoryRuleRuleNot].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleNot({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<CostCategoryRuleRuleNotAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<CostCategoryRuleRuleNotAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategory': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<CostCategoryRuleRuleNotOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<CostCategoryRuleRuleNotOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRuleNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory CostCategoryRuleRuleNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNot(
      ands: map['ands'] == null ? null : (pulumi.Input.decodeList<CostCategoryRuleRuleNotAnd>(map['ands'], (value) => CostCategoryRuleRuleNotAnd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      costCategory: map['costCategory'] == null ? null : (CostCategoryRuleRuleNotCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>())).input(),
      dimension: map['dimension'] == null ? null : (CostCategoryRuleRuleNotDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>())).input(),
      not: map['not'] == null ? null : (CostCategoryRuleRuleNotNot.fromMap((map['not'] as Map).cast<String, dynamic>())).input(),
      ors: map['ors'] == null ? null : (pulumi.Input.decodeList<CostCategoryRuleRuleNotOr>(map['ors'], (value) => CostCategoryRuleRuleNotOr.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (CostCategoryRuleRuleNotTags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

