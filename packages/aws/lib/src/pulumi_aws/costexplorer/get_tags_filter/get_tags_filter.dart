// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_tags_filter_and/get_tags_filter_and.dart';
import '../get_tags_filter_cost_category/get_tags_filter_cost_category.dart';
import '../get_tags_filter_dimension/get_tags_filter_dimension.dart';
import '../get_tags_filter_not/get_tags_filter_not.dart';
import '../get_tags_filter_or/get_tags_filter_or.dart';
import '../get_tags_filter_tags/get_tags_filter_tags.dart';

class GetTagsFilter {
  /// Return results that match both `Dimension` objects.
  final List<GetTagsFilterAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See <span pulumi-lang-nodejs="`costCategory`" pulumi-lang-dotnet="`CostCategory`" pulumi-lang-go="`costCategory`" pulumi-lang-python="`cost_category`" pulumi-lang-yaml="`costCategory`" pulumi-lang-java="`costCategory`">`cost_category`</span> block below for details.
  final GetTagsFilterCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See <span pulumi-lang-nodejs="`dimension`" pulumi-lang-dotnet="`Dimension`" pulumi-lang-go="`dimension`" pulumi-lang-python="`dimension`" pulumi-lang-yaml="`dimension`" pulumi-lang-java="`dimension`">`dimension`</span> block below for details.
  final GetTagsFilterDimension? dimension;

  /// Return results that match both `Dimension` object.
  final GetTagsFilterNot? not;

  /// Return results that match both `Dimension` object.
  final List<GetTagsFilterOr>? ors;

  /// Tags that match your request.
  final GetTagsFilterTags? tags;

  GetTagsFilter({
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
      map['ands'] = Input.encodeList<GetTagsFilterAnd, Map<String, dynamic>>(
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
      map['ors'] = Input.encodeList<GetTagsFilterOr, Map<String, dynamic>>(
          orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory GetTagsFilter.fromMap(Map<String, dynamic> map) {
    return GetTagsFilter(
      ands: map['ands'] == null
          ? null
          : Input.decodeList<GetTagsFilterAnd>(
              map['ands'],
              (value) => GetTagsFilterAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null
          ? null
          : GetTagsFilterCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : GetTagsFilterDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : GetTagsFilterNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : Input.decodeList<GetTagsFilterOr>(
              map['ors'],
              (value) => GetTagsFilterOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : GetTagsFilterTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
