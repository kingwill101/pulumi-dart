// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_and.dart';
import 'cost_category_rule_rule_cost_category.dart';
import 'cost_category_rule_rule_dimension.dart';
import 'cost_category_rule_rule_not.dart';
import 'cost_category_rule_rule_or.dart';
import 'cost_category_rule_rule_tags.dart';

class CostCategoryRuleRule {
  /// Return results that match both `Dimension` objects.
  final List<CostCategoryRuleRuleAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleDimension? dimension;

  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleNot? not;

  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleOr>? ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final CostCategoryRuleRuleTags? tags;

  /// Creates a new [CostCategoryRuleRule].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  CostCategoryRuleRule({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null
          ? null
          : pulumi.Input.encodeList<
              CostCategoryRuleRuleAnd,
              Map<String, dynamic>
            >(ands!, (value) => value.toMap()),
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null
          ? null
          : pulumi.Input.encodeList<
              CostCategoryRuleRuleOr,
              Map<String, dynamic>
            >(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRule.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRule(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<CostCategoryRuleRuleAnd>(
              map['ands'],
              (value) => CostCategoryRuleRuleAnd.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>(),
            ),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>(),
            ),
      not: map['not'] == null
          ? null
          : CostCategoryRuleRuleNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>(),
            ),
      ors: map['ors'] == null
          ? null
          : pulumi.Input.decodeList<CostCategoryRuleRuleOr>(
              map['ors'],
              (value) => CostCategoryRuleRuleOr.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
