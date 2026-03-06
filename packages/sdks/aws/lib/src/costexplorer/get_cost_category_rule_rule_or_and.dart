// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_or_and_cost_category.dart';
import 'get_cost_category_rule_rule_or_and_dimension.dart';
import 'get_cost_category_rule_rule_or_and_tag.dart';

class GetCostCategoryRuleRuleOrAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrAndCostCategory>> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrAndDimension>> dimensions;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleOrAndTag>> tags;

  /// Creates a new [GetCostCategoryRuleRuleOrAnd].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  const GetCostCategoryRuleRuleOrAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrAndCostCategory>, List<Map<String, dynamic>>>(costCategories, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrAndCostCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrAndDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrAndDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleOrAndTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleOrAndTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCostCategoryRuleRuleOrAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleOrAnd(
      costCategories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrAndCostCategory>(map['costCategories']!, (value) => GetCostCategoryRuleRuleOrAndCostCategory.fromMap((value as Map).cast<String, dynamic>()))),
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrAndDimension>(map['dimensions']!, (value) => GetCostCategoryRuleRuleOrAndDimension.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleOrAndTag>(map['tags']!, (value) => GetCostCategoryRuleRuleOrAndTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

