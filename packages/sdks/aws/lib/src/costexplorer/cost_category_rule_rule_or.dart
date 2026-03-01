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
  final List<CostCategoryRuleRuleOrAnd>? ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleOrCostCategory? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleOrDimension? dimension;
  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleOrNot? not;
  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleOrOr>? ors;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleOrTags? tags;

  /// Creates a new [CostCategoryRuleRuleOr].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleOr({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null ? null : pulumi.Input.encodeList<CostCategoryRuleRuleOrAnd, Map<String, dynamic>>(ands!, (value) => value.toMap()),
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null ? null : pulumi.Input.encodeList<CostCategoryRuleRuleOrOr, Map<String, dynamic>>(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleOr.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOr(
      ands: map['ands'] == null ? null : pulumi.Input.decodeList<CostCategoryRuleRuleOrAnd>(map['ands'], (value) => CostCategoryRuleRuleOrAnd.fromMap((value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null ? null : CostCategoryRuleRuleOrCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null ? null : CostCategoryRuleRuleOrDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : CostCategoryRuleRuleOrNot.fromMap((map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null ? null : pulumi.Input.decodeList<CostCategoryRuleRuleOrOr>(map['ors'], (value) => CostCategoryRuleRuleOrOr.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : CostCategoryRuleRuleOrTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

