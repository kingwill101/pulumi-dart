// ignore_for_file: unused_element, unnecessary_cast

import 'get_tags_filter_or_cost_category.dart';
import 'get_tags_filter_or_dimension.dart';
import 'get_tags_filter_or_tags.dart';

class GetTagsFilterOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final GetTagsFilterOrCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final GetTagsFilterOrDimension? dimension;

  /// Tags that match your request.
  final GetTagsFilterOrTags? tags;

  /// Creates a new [GetTagsFilterOr].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  /// [tags] Tags that match your request.
  GetTagsFilterOr({this.costCategory, this.dimension, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory GetTagsFilterOr.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterOr(
      costCategory: map['costCategory'] == null
          ? null
          : GetTagsFilterOrCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>(),
            ),
      dimension: map['dimension'] == null
          ? null
          : GetTagsFilterOrDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : GetTagsFilterOrTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
