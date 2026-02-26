// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_and_and/get_cost_category_rule_rule_and_and.dart';
import '../get_cost_category_rule_rule_and_cost_category/get_cost_category_rule_rule_and_cost_category.dart';
import '../get_cost_category_rule_rule_and_dimension/get_cost_category_rule_rule_and_dimension.dart';
import '../get_cost_category_rule_rule_and_not/get_cost_category_rule_rule_and_not.dart';
import '../get_cost_category_rule_rule_and_or/get_cost_category_rule_rule_and_or.dart';
import '../get_cost_category_rule_rule_and_tag/get_cost_category_rule_rule_and_tag.dart';

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
    map['ands'] =
        Input.encodeList<GetCostCategoryRuleRuleAndAnd, Map<String, dynamic>>(
            ands, (value) => value.toMap());
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleAndCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleAndDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['nots'] =
        Input.encodeList<GetCostCategoryRuleRuleAndNot, Map<String, dynamic>>(
            nots, (value) => value.toMap());
    map['ors'] =
        Input.encodeList<GetCostCategoryRuleRuleAndOr, Map<String, dynamic>>(
            ors, (value) => value.toMap());
    map['tags'] =
        Input.encodeList<GetCostCategoryRuleRuleAndTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAnd(
      ands: Input.decodeList<GetCostCategoryRuleRuleAndAnd>(
          map['ands'],
          (value) => GetCostCategoryRuleRuleAndAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      costCategories: Input.decodeList<GetCostCategoryRuleRuleAndCostCategory>(
          map['costCategories'],
          (value) => GetCostCategoryRuleRuleAndCostCategory.fromMap(
              (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleAndDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleAndDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      nots: Input.decodeList<GetCostCategoryRuleRuleAndNot>(
          map['nots'],
          (value) => GetCostCategoryRuleRuleAndNot.fromMap(
              (value as Map).cast<String, dynamic>())),
      ors: Input.decodeList<GetCostCategoryRuleRuleAndOr>(
          map['ors'],
          (value) => GetCostCategoryRuleRuleAndOr.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleAndTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleAndTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
