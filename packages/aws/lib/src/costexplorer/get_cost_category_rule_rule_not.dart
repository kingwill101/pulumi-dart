// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_not_and.dart';
import 'get_cost_category_rule_rule_not_cost_category.dart';
import 'get_cost_category_rule_rule_not_dimension.dart';
import 'get_cost_category_rule_rule_not_not.dart';
import 'get_cost_category_rule_rule_not_or.dart';
import 'get_cost_category_rule_rule_not_tag.dart';

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

  /// Creates a new [GetCostCategoryRuleRuleNot].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [nots] Return results that do not match the `Dimension` object.
  /// [ors] Return results that match either `Dimension` object.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
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
    map['ands'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleNotAnd,
        Map<String, dynamic>>(ands, (value) => value.toMap());
    map['costCategories'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleNotCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GetCostCategoryRuleRuleNotDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['nots'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleNotNot,
        Map<String, dynamic>>(nots, (value) => value.toMap());
    map['ors'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleNotOr,
        Map<String, dynamic>>(ors, (value) => value.toMap());
    map['tags'] = pulumi.Input.encodeList<GetCostCategoryRuleRuleNotTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRuleNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNot(
      ands: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAnd>(
          map['ands'],
          (value) => GetCostCategoryRuleRuleNotAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleNotCostCategory>(
              map['costCategories'],
              (value) => GetCostCategoryRuleRuleNotCostCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleNotDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      nots: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotNot>(
          map['nots'],
          (value) => GetCostCategoryRuleRuleNotNot.fromMap(
              (value as Map).cast<String, dynamic>())),
      ors: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotOr>(
          map['ors'],
          (value) => GetCostCategoryRuleRuleNotOr.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleNotTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
