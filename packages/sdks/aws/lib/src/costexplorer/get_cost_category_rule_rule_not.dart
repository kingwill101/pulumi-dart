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
  final pulumi.Input<List<GetCostCategoryRuleRuleNotAnd>> ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotCostCategory>> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotDimension>> dimensions;
  /// Return results that do not match the `Dimension` object.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotNot>> nots;
  /// Return results that match either `Dimension` object.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotOr>> ors;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotTag>> tags;

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
    return <String, dynamic>{
      'ands': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotCostCategory>, List<Map<String, dynamic>>>(costCategories, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotCostCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nots': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotNot>, List<Map<String, dynamic>>>(nots, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotNot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ors': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCostCategoryRuleRuleNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNot(
      ands: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAnd>(map['ands']!, (value) => GetCostCategoryRuleRuleNotAnd.fromMap((value as Map).cast<String, dynamic>()))),
      costCategories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleNotCostCategory>(map['costCategories']!, (value) => GetCostCategoryRuleRuleNotCostCategory.fromMap((value as Map).cast<String, dynamic>()))),
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleNotDimension>(map['dimensions']!, (value) => GetCostCategoryRuleRuleNotDimension.fromMap((value as Map).cast<String, dynamic>()))),
      nots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleNotNot>(map['nots']!, (value) => GetCostCategoryRuleRuleNotNot.fromMap((value as Map).cast<String, dynamic>()))),
      ors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleNotOr>(map['ors']!, (value) => GetCostCategoryRuleRuleNotOr.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleNotTag>(map['tags']!, (value) => GetCostCategoryRuleRuleNotTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

