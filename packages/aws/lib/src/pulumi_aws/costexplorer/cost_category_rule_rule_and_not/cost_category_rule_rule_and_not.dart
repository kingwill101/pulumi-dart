// ignore_for_file: unused_element, unnecessary_cast

import '../cost_category_rule_rule_and_not_cost_category/cost_category_rule_rule_and_not_cost_category.dart';
import '../cost_category_rule_rule_and_not_dimension/cost_category_rule_rule_and_not_dimension.dart';
import '../cost_category_rule_rule_and_not_tags/cost_category_rule_rule_and_not_tags.dart';

class CostCategoryRuleRuleAndNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleAndNotCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleAndNotDimension? dimension;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleAndNotTags? tags;

  CostCategoryRuleRuleAndNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final costCategoryValue = costCategory;
    if (costCategoryValue != null) {
      map['costCategory'] = costCategoryValue.toMap();
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory CostCategoryRuleRuleAndNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleAndNot(
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleAndNotCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleAndNotDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleAndNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
