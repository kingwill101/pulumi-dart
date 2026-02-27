// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cost_category_rule_rule_or_and/get_cost_category_rule_rule_or_and.dart';
import '../get_cost_category_rule_rule_or_cost_category/get_cost_category_rule_rule_or_cost_category.dart';
import '../get_cost_category_rule_rule_or_dimension/get_cost_category_rule_rule_or_dimension.dart';
import '../get_cost_category_rule_rule_or_not/get_cost_category_rule_rule_or_not.dart';
import '../get_cost_category_rule_rule_or_or/get_cost_category_rule_rule_or_or.dart';
import '../get_cost_category_rule_rule_or_tag/get_cost_category_rule_rule_or_tag.dart';

class GetCostCategoryRuleRuleOr {
  /// Return results that match both `Dimension` objects.
  final List<GetCostCategoryRuleRuleOrAnd> ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleOrCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrDimension> dimensions;

  /// Return results that do not match the `Dimension` object.
  final List<GetCostCategoryRuleRuleOrNot> nots;

  /// Return results that match either `Dimension` object.
  final List<GetCostCategoryRuleRuleOrOr> ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrTag> tags;

  GetCostCategoryRuleRuleOr({
    required this.ands,
    required this.costCategories,
    required this.dimensions,
    required this.nots,
    required this.ors,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ands'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleOrAnd,
        Map<String, dynamic>>(ands, (value) => value.toMap());
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleOrCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleOrDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['nots'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleOrNot,
        Map<String, dynamic>>(nots, (value) => value.toMap());
    map['ors'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleOrOr,
        Map<String, dynamic>>(ors, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleOrTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleOr.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleOr(
      ands: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrAnd>(
          map['ands'],
          (value) => GetCostCategoryRuleRuleOrAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleOrCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleOrCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleOrDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      nots: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrNot>(
          map['nots'],
          (value) => GetCostCategoryRuleRuleOrNot.fromMap(
              (value as Map).cast<String, dynamic>())),
      ors: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrOr>(
          map['ors'],
          (value) => GetCostCategoryRuleRuleOrOr.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleOrTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
