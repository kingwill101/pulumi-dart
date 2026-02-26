// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cost_category_rule_rule_and_and/cost_category_rule_rule_and_and.dart';
import '../cost_category_rule_rule_and_cost_category/cost_category_rule_rule_and_cost_category.dart';
import '../cost_category_rule_rule_and_dimension/cost_category_rule_rule_and_dimension.dart';
import '../cost_category_rule_rule_and_not/cost_category_rule_rule_and_not.dart';
import '../cost_category_rule_rule_and_or/cost_category_rule_rule_and_or.dart';
import '../cost_category_rule_rule_and_tags/cost_category_rule_rule_and_tags.dart';

class CostCategoryRuleRuleAnd {
  /// Return results that match both `Dimension` objects.
  final List<CostCategoryRuleRuleAndAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleAndCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleAndDimension? dimension;

  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleAndNot? not;

  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleAndOr>? ors;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleAndTags? tags;

  CostCategoryRuleRuleAnd({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andsValue = ands;
    if (andsValue != null) {
      map['ands'] =
          Input.encodeList<CostCategoryRuleRuleAndAnd, Map<String, dynamic>>(
              andsValue, (value) => value.toMap());
    }
    final costCategoryValue = costCategory;
    if (costCategoryValue != null) {
      map['costCategory'] = costCategoryValue.toMap();
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final notValue = not;
    if (notValue != null) {
      map['not'] = notValue.toMap();
    }
    final orsValue = ors;
    if (orsValue != null) {
      map['ors'] =
          Input.encodeList<CostCategoryRuleRuleAndOr, Map<String, dynamic>>(
              orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory CostCategoryRuleRuleAnd.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleAnd(
      ands: map['ands'] == null
          ? null
          : Input.decodeList<CostCategoryRuleRuleAndAnd>(
              map['ands'],
              (value) => CostCategoryRuleRuleAndAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleAndCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleAndDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : CostCategoryRuleRuleAndNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : Input.decodeList<CostCategoryRuleRuleAndOr>(
              map['ors'],
              (value) => CostCategoryRuleRuleAndOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleAndTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
