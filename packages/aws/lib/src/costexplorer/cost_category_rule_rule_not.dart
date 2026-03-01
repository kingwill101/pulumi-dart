// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_rule_not_and.dart';
import 'cost_category_rule_rule_not_cost_category.dart';
import 'cost_category_rule_rule_not_dimension.dart';
import 'cost_category_rule_rule_not_not.dart';
import 'cost_category_rule_rule_not_or.dart';
import 'cost_category_rule_rule_not_tags.dart';

class CostCategoryRuleRuleNot {
  /// Return results that match both `Dimension` objects.
  final List<CostCategoryRuleRuleNotAnd>? ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleNotCostCategory? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleNotDimension? dimension;
  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleNotNot? not;
  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleNotOr>? ors;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleNotTags? tags;

  /// Creates a new [CostCategoryRuleRuleNot].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleNot({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null ? null : pulumi.Input.encodeList<CostCategoryRuleRuleNotAnd, Map<String, dynamic>>(ands!, (value) => value.toMap()),
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null ? null : pulumi.Input.encodeList<CostCategoryRuleRuleNotOr, Map<String, dynamic>>(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory CostCategoryRuleRuleNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNot(
      ands: map['ands'] == null ? null : pulumi.Input.decodeList<CostCategoryRuleRuleNotAnd>(map['ands'], (value) => CostCategoryRuleRuleNotAnd.fromMap((value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null ? null : CostCategoryRuleRuleNotCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null ? null : CostCategoryRuleRuleNotDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : CostCategoryRuleRuleNotNot.fromMap((map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null ? null : pulumi.Input.decodeList<CostCategoryRuleRuleNotOr>(map['ors'], (value) => CostCategoryRuleRuleNotOr.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : CostCategoryRuleRuleNotTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

