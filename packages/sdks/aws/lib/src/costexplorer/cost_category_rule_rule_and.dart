// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_and_and.dart';
import 'cost_category_rule_rule_and_cost_category.dart';
import 'cost_category_rule_rule_and_dimension.dart';
import 'cost_category_rule_rule_and_not.dart';
import 'cost_category_rule_rule_and_or.dart';
import 'cost_category_rule_rule_and_tags.dart';

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
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleAndTags? tags;

  /// Creates a new [CostCategoryRuleRuleAnd].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleAnd({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null ? null : pulumi.Input.encodeList<CostCategoryRuleRuleAndAnd, Map<String, dynamic>>(ands!, (value) => value.toMap()),
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null ? null : pulumi.Input.encodeList<CostCategoryRuleRuleAndOr, Map<String, dynamic>>(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleAnd.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleAnd(
      ands: map['ands'] == null ? null : pulumi.Input.decodeList<CostCategoryRuleRuleAndAnd>(map['ands'], (value) => CostCategoryRuleRuleAndAnd.fromMap((value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null ? null : CostCategoryRuleRuleAndCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null ? null : CostCategoryRuleRuleAndDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : CostCategoryRuleRuleAndNot.fromMap((map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null ? null : pulumi.Input.decodeList<CostCategoryRuleRuleAndOr>(map['ors'], (value) => CostCategoryRuleRuleAndOr.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : CostCategoryRuleRuleAndTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

