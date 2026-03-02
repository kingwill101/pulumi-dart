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
  final pulumi.Input<List<GetCostCategoryRuleRuleAndAnd>> ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndCostCategory>> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndDimension>> dimensions;
  /// Return results that do not match the `Dimension` object.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndNot>> nots;
  /// Return results that match either `Dimension` object.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndOr>> ors;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndTag>> tags;

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
    return <String, dynamic>{
      'ands': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndCostCategory>, List<Map<String, dynamic>>>(costCategories, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndCostCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nots': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndNot>, List<Map<String, dynamic>>>(nots, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndNot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ors': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCostCategoryRuleRuleAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAnd(
      ands: (pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAnd>(map['ands']!, (value) => GetCostCategoryRuleRuleAndAnd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      costCategories: (pulumi.Input.decodeList<GetCostCategoryRuleRuleAndCostCategory>(map['costCategories']!, (value) => GetCostCategoryRuleRuleAndCostCategory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensions: (pulumi.Input.decodeList<GetCostCategoryRuleRuleAndDimension>(map['dimensions']!, (value) => GetCostCategoryRuleRuleAndDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nots: (pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNot>(map['nots']!, (value) => GetCostCategoryRuleRuleAndNot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ors: (pulumi.Input.decodeList<GetCostCategoryRuleRuleAndOr>(map['ors']!, (value) => GetCostCategoryRuleRuleAndOr.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: (pulumi.Input.decodeList<GetCostCategoryRuleRuleAndTag>(map['tags']!, (value) => GetCostCategoryRuleRuleAndTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

