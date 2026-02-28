// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_and_and.dart';
import 'get_cost_category_rule_rule_and_cost_category.dart';
import 'get_cost_category_rule_rule_and_dimension.dart';
import 'get_cost_category_rule_rule_and_not.dart';
import 'get_cost_category_rule_rule_and_or.dart';
import 'get_cost_category_rule_rule_and_tag.dart';

class GetCostCategoryRuleRuleAnd {
  /// Return results that match both `Dimension` objects.
  final List<GetCostCategoryRuleRuleAndAnd> ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleAndCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndDimension> dimensions;

  /// Return results that do not match the `Dimension` object.
  final List<GetCostCategoryRuleRuleAndNot> nots;

  /// Return results that match either `Dimension` object.
  final List<GetCostCategoryRuleRuleAndOr> ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleAndTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleAnd].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [nots] Return results that do not match the `Dimension` object.
  /// [ors] Return results that match either `Dimension` object.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleAnd({
    required this.ands,
    required this.costCategories,
    required this.dimensions,
    required this.nots,
    required this.ors,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ands'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleAndAnd,
        Map<String, dynamic>>(ands, (value) => value.toMap());
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleAndCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleAndDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['nots'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleAndNot,
        Map<String, dynamic>>(nots, (value) => value.toMap());
    map['ors'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleAndOr,
        Map<String, dynamic>>(ors, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleAndTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAnd(
      ands: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAnd>(
          map['ands'],
          (value) => GetCostCategoryRuleRuleAndAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleAndCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleAndCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleAndDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      nots: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNot>(
          map['nots'],
          (value) => GetCostCategoryRuleRuleAndNot.fromMap(
              (value as Map).cast<String, dynamic>())),
      ors: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndOr>(
          map['ors'],
          (value) => GetCostCategoryRuleRuleAndOr.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleAndTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
