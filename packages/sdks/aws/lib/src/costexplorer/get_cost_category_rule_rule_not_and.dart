// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_not_and_cost_category.dart';
import 'get_cost_category_rule_rule_not_and_dimension.dart';
import 'get_cost_category_rule_rule_not_and_tag.dart';

class GetCostCategoryRuleRuleNotAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotAndCostCategory>> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotAndDimension>> dimensions;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleNotAndTag>> tags;

  /// Creates a new [GetCostCategoryRuleRuleNotAnd].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleNotAnd({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotAndCostCategory>, List<Map<String, dynamic>>>(costCategories, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotAndCostCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotAndDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotAndDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRuleNotAndTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRuleNotAndTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCostCategoryRuleRuleNotAnd.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotAnd(
      costCategories: (pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAndCostCategory>(map['costCategories'], (value) => GetCostCategoryRuleRuleNotAndCostCategory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensions: (pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAndDimension>(map['dimensions'], (value) => GetCostCategoryRuleRuleNotAndDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: (pulumi.Input.decodeList<GetCostCategoryRuleRuleNotAndTag>(map['tags'], (value) => GetCostCategoryRuleRuleNotAndTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

