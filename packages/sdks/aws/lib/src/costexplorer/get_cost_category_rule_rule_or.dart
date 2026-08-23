// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_or_and.dart';
import 'get_cost_category_rule_rule_or_cost_category.dart';
import 'get_cost_category_rule_rule_or_dimension.dart';
import 'get_cost_category_rule_rule_or_not.dart';
import 'get_cost_category_rule_rule_or_or.dart';
import 'get_cost_category_rule_rule_or_tag.dart';

class GetCostCategoryRuleRuleOr {
  /// Return results that match both `Dimension` objects.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrAnd>> ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrCostCategory>> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrDimension>> dimensions;
  /// Return results that do not match the `Dimension` object.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrNot>> nots;
  /// Return results that match either `Dimension` object.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrOr>> ors;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrTag>> tags;

  /// Creates a new [GetCostCategoryRuleRuleOr].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [nots] Return results that do not match the `Dimension` object.
  /// [ors] Return results that match either `Dimension` object.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  const GetCostCategoryRuleRuleOr({
    required this.ands,
    required this.costCategories,
    required this.dimensions,
    required this.nots,
    required this.ors,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrCostCategory>, List<Map<String, dynamic>>>(costCategories, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrCostCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nots': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrNot>, List<Map<String, dynamic>>>(nots, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrNot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ors': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCostCategoryRuleRuleOr.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleOr(
      ands: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrAnd>(map['ands']!, (value) => GetCostCategoryRuleRuleOrAnd.fromMap((value as Map).cast<String, dynamic>()))),
      costCategories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrCostCategory>(map['costCategories']!, (value) => GetCostCategoryRuleRuleOrCostCategory.fromMap((value as Map).cast<String, dynamic>()))),
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrDimension>(map['dimensions']!, (value) => GetCostCategoryRuleRuleOrDimension.fromMap((value as Map).cast<String, dynamic>()))),
      nots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrNot>(map['nots']!, (value) => GetCostCategoryRuleRuleOrNot.fromMap((value as Map).cast<String, dynamic>()))),
      ors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrOr>(map['ors']!, (value) => GetCostCategoryRuleRuleOrOr.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrTag>(map['tags']!, (value) => GetCostCategoryRuleRuleOrTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
