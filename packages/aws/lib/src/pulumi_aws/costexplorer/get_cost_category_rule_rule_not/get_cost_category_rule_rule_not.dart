// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_not_and/get_cost_category_rule_rule_not_and.dart';
import '../get_cost_category_rule_rule_not_cost_category/get_cost_category_rule_rule_not_cost_category.dart';
import '../get_cost_category_rule_rule_not_dimension/get_cost_category_rule_rule_not_dimension.dart';
import '../get_cost_category_rule_rule_not_not/get_cost_category_rule_rule_not_not.dart';
import '../get_cost_category_rule_rule_not_or/get_cost_category_rule_rule_not_or.dart';
import '../get_cost_category_rule_rule_not_tag/get_cost_category_rule_rule_not_tag.dart';

class GetCostCategoryRuleRuleNot {
  /// Return results that match both `Dimension` objects.
  final List<GetCostCategoryRuleRuleNotAnd> ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleNotCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotDimension> dimensions;

  /// Return results that do not match the `Dimension` object.
  final List<GetCostCategoryRuleRuleNotNot> nots;

  /// Return results that match either `Dimension` object.
  final List<GetCostCategoryRuleRuleNotOr> ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotTag> tags;

  GetCostCategoryRuleRuleNot({
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
        Input.encodeList<GetCostCategoryRuleRuleNotAnd, Map<String, dynamic>>(
            ands, (value) => value.toMap());
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleNotCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleNotDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['nots'] =
        Input.encodeList<GetCostCategoryRuleRuleNotNot, Map<String, dynamic>>(
            nots, (value) => value.toMap());
    map['ors'] =
        Input.encodeList<GetCostCategoryRuleRuleNotOr, Map<String, dynamic>>(
            ors, (value) => value.toMap());
    map['tags'] =
        Input.encodeList<GetCostCategoryRuleRuleNotTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNot(
      ands: Input.decodeList<GetCostCategoryRuleRuleNotAnd>(
          map['ands'],
          (value) => GetCostCategoryRuleRuleNotAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      costCategories: Input.decodeList<GetCostCategoryRuleRuleNotCostCategory>(
          map['costCategories'],
          (value) => GetCostCategoryRuleRuleNotCostCategory.fromMap(
              (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleNotDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleNotDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      nots: Input.decodeList<GetCostCategoryRuleRuleNotNot>(
          map['nots'],
          (value) => GetCostCategoryRuleRuleNotNot.fromMap(
              (value as Map).cast<String, dynamic>())),
      ors: Input.decodeList<GetCostCategoryRuleRuleNotOr>(
          map['ors'],
          (value) => GetCostCategoryRuleRuleNotOr.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleNotTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleNotTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
