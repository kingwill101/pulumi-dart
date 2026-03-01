// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_or_or_cost_category.dart';
import 'get_cost_category_rule_rule_or_or_dimension.dart';
import 'get_cost_category_rule_rule_or_or_tag.dart';

class GetCostCategoryRuleRuleOrOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleOrOrCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrOrDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleOrOrTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleOrOr].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleOrOr({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleOrOrCostCategory,
            Map<String, dynamic>
          >(costCategories, (value) => value.toMap()),
      'dimensions':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleOrOrDimension,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'tags':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleOrOrTag,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory GetCostCategoryRuleRuleOrOr.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleOrOr(
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleOrOrCostCategory>(
            map['costCategories'],
            (value) => GetCostCategoryRuleRuleOrOrCostCategory.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      dimensions: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrOrDimension>(
        map['dimensions'],
        (value) => GetCostCategoryRuleRuleOrOrDimension.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleOrOrTag>(
        map['tags'],
        (value) => GetCostCategoryRuleRuleOrOrTag.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
