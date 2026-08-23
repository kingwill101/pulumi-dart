// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_and_and_cost_category.dart';
import 'get_cost_category_rule_rule_and_and_dimension.dart';
import 'get_cost_category_rule_rule_and_and_tag.dart';

class GetCostCategoryRuleRuleAndAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndAndCostCategory>> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndAndDimension>> dimensions;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndAndTag>> tags;

  /// Creates a new [GetCostCategoryRuleRuleAndAnd].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  const GetCostCategoryRuleRuleAndAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndAndCostCategory>, List<Map<String, dynamic>>>(costCategories, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndAndCostCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndAndDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndAndDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleAndAndTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleAndAndTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCostCategoryRuleRuleAndAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAndAnd(
      costCategories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAndCostCategory>(map['costCategories']!, (value) => GetCostCategoryRuleRuleAndAndCostCategory.fromMap((value as Map).cast<String, dynamic>()))),
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAndDimension>(map['dimensions']!, (value) => GetCostCategoryRuleRuleAndAndDimension.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRuleAndAndTag>(map['tags']!, (value) => GetCostCategoryRuleRuleAndAndTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
