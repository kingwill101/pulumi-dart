// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_not_not_cost_category.dart';
import 'get_cost_category_rule_rule_not_not_dimension.dart';
import 'get_cost_category_rule_rule_not_not_tag.dart';

class GetCostCategoryRuleRuleNotNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleNotNotCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotNotDimension> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleNotNotTag> tags;

  /// Creates a new [GetCostCategoryRuleRuleNotNot].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleNotNot({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleNotNotCostCategory,
            Map<String, dynamic>
          >(costCategories, (value) => value.toMap()),
      'dimensions':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleNotNotDimension,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'tags':
          pulumi.Input.encodeList<
            GetCostCategoryRuleRuleNotNotTag,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory GetCostCategoryRuleRuleNotNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleNotNot(
      costCategories:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleNotNotCostCategory>(
            map['costCategories'],
            (value) => GetCostCategoryRuleRuleNotNotCostCategory.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      dimensions:
          pulumi.Input.decodeList<GetCostCategoryRuleRuleNotNotDimension>(
            map['dimensions'],
            (value) => GetCostCategoryRuleRuleNotNotDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      tags: pulumi.Input.decodeList<GetCostCategoryRuleRuleNotNotTag>(
        map['tags'],
        (value) => GetCostCategoryRuleRuleNotNotTag.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
