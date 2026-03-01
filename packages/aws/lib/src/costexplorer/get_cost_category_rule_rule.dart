// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_and.dart';
import 'get_cost_category_rule_rule_cost_category.dart';
import 'get_cost_category_rule_rule_dimension.dart';
import 'get_cost_category_rule_rule_not.dart';
import 'get_cost_category_rule_rule_or.dart';
import 'get_cost_category_rule_rule_tag.dart';

class GetCostCategoryRuleRule {
  /// Return results that match both `Dimension` objects.
  final List<GetCostCategoryRuleRuleAnd> ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleDimension> dimensions;

  /// Return results that do not match the `Dimension` object.
  final List<GetCostCategoryRuleRuleNot> nots;

  /// Return results that match either `Dimension` object.
  final List<GetCostCategoryRuleRuleOr> ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleTag> tags;

  /// Creates a new [GetCostCategoryRuleRule].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [nots] Return results that do not match the `Dimension` object.
  /// [ors] Return results that match either `Dimension` object.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRule({
    required this.ands,
    required this.costCategories,
    required this.dimensions,
    required this.nots,
    required this.ors,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleAnd,
            Map<String, dynamic>
          >(ands, (value) => value.toMap()),
      'costCategories':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleCostCategory,
            Map<String, dynamic>
          >(costCategories, (value) => value.toMap()),
      'dimensions':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleDimension,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'nots':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleNot,
            Map<String, dynamic>
          >(nots, (value) => value.toMap()),
      'ors':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleOr,
            Map<String, dynamic>
          >(ors, (value) => value.toMap()),
      'tags':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleTag,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory GetCostCategoryRuleRule.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRule(
      ands: pulumi.Input.decodeList<GetCostCategoryRuleRuleAnd>(
        map['ands'],
        (value) => GetCostCategoryRuleRuleAnd.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleCostCategory>(
            map['costCategories'],
            (value) => GetCostCategoryRuleRuleCostCategory.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      dimensions: pulumi.Input.decodeList<GetCostCategoryRuleRuleDimension>(
        map['dimensions'],
        (value) => GetCostCategoryRuleRuleDimension.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nots: pulumi.Input.decodeList<GetCostCategoryRuleRuleNot>(
        map['nots'],
        (value) => GetCostCategoryRuleRuleNot.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      ors: pulumi.Input.decodeList<GetCostCategoryRuleRuleOr>(
        map['ors'],
        (value) => GetCostCategoryRuleRuleOr.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleTag>(
        map['tags'],
        (value) => GetCostCategoryRuleRuleTag.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
