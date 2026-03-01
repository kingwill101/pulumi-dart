// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter_and.dart';
import 'get_tags_filter_cost_category.dart';
import 'get_tags_filter_dimension.dart';
import 'get_tags_filter_not.dart';
import 'get_tags_filter_or.dart';
import 'get_tags_filter_tags.dart';

class GetTagsFilter {
  /// Return results that match both `Dimension` objects.
  final List<GetTagsFilterAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final GetTagsFilterCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final GetTagsFilterDimension? dimension;

  /// Return results that match both `Dimension` object.
  final GetTagsFilterNot? not;

  /// Return results that match both `Dimension` object.
  final List<GetTagsFilterOr>? ors;

  /// Tags that match your request.
  final GetTagsFilterTags? tags;

  /// Creates a new [GetTagsFilter].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Tags that match your request.
  GetTagsFilter({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null
          ? null
          : pulumi.Input.encodeList<GetTagsFilterAnd, Map<String, dynamic>>(
              ands!,
              (value) => value.toMap(),
            ),
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null
          ? null
          : pulumi.Input.encodeList<GetTagsFilterOr, Map<String, dynamic>>(
              ors!,
              (value) => value.toMap(),
            ),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory GetTagsFilter.fromMap(Map<String, dynamic> map) {
    return GetTagsFilter(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<GetTagsFilterAnd>(
              map['ands'],
              (value) => GetTagsFilterAnd.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      costCategory: map['costCategory'] == null
          ? null
          : GetTagsFilterCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>(),
            ),
      dimension: map['dimension'] == null
          ? null
          : GetTagsFilterDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>(),
            ),
      not: map['not'] == null
          ? null
          : GetTagsFilterNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>(),
            ),
      ors: map['ors'] == null
          ? null
          : pulumi.Input.decodeList<GetTagsFilterOr>(
              map['ors'],
              (value) => GetTagsFilterOr.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tags: map['tags'] == null
          ? null
          : GetTagsFilterTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
