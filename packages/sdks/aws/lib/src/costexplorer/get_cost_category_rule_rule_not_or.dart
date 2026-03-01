// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_not_or_cost_category.dart';
import 'get_cost_category_rule_rule_not_or_dimension.dart';
import 'get_cost_category_rule_rule_not_or_tag.dart';

class GetCostCategoryRuleRuleNotOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleNotOrCostCategory> costCategories;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotOrDimension> dimensions;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotOrTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleNotOr].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleNotOr({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': pulumi.Input.encodeList<GetCostCategoryRuleRuleNotOrCostCategory, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': pulumi.Input.encodeList<GetCostCategoryRuleRuleNotOrDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': pulumi.Input.encodeList<GetCostCategoryRuleRuleNotOrTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetCostCategoryRuleRuleNotOr.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotOr(
      costCategories: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotOrCostCategory>(map['costCategories'], (value) => GetCostCategoryRuleRuleNotOrCostCategory.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotOrDimension>(map['dimensions'], (value) => GetCostCategoryRuleRuleNotOrDimension.fromMap((value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotOrTag>(map['tags'], (value) => GetCostCategoryRuleRuleNotOrTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

