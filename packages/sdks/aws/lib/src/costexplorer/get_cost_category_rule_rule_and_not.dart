// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_rule_and_not_cost_category.dart';
import 'get_cost_category_rule_rule_and_not_dimension.dart';
import 'get_cost_category_rule_rule_and_not_tag.dart';

class GetCostCategoryRuleRuleAndNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndNotCostCategory>>
  costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndNotDimension>> dimensions;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<List<GetCostCategoryRuleRuleAndNotTag>> tags;

  /// Creates a new [GetCostCategoryRuleRuleAndNot].
  /// [costCategories] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimensions] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryRuleRuleAndNot({
    required this.costCategories,
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories':
          pulumi.Input.mapInputValue<
            List<GetCostCategoryRuleRuleAndNotCostCategory>,
            List<Map<String, dynamic>>
          >(
            costCategories,
            (value) =>
                pulumi.Input.encodeList<
                  GetCostCategoryRuleRuleAndNotCostCategory,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dimensions':
          pulumi.Input.mapInputValue<
            List<GetCostCategoryRuleRuleAndNotDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  GetCostCategoryRuleRuleAndNotDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags':
          pulumi.Input.mapInputValue<
            List<GetCostCategoryRuleRuleAndNotTag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) =>
                pulumi.Input.encodeList<
                  GetCostCategoryRuleRuleAndNotTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetCostCategoryRuleRuleAndNot.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRuleAndNot(
      costCategories: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNotCostCategory>(
          map['costCategories']!,
          (value) => GetCostCategoryRuleRuleAndNotCostCategory.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      dimensions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNotDimension>(
          map['dimensions']!,
          (value) => GetCostCategoryRuleRuleAndNotDimension.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tags: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetCostCategoryRuleRuleAndNotTag>(
          map['tags']!,
          (value) => GetCostCategoryRuleRuleAndNotTag.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
