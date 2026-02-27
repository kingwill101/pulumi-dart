// ignore_for_file: unused_element, unnecessary_cast

import '../get_tags_filter_not_cost_category/get_tags_filter_not_cost_category.dart';
import '../get_tags_filter_not_dimension/get_tags_filter_not_dimension.dart';
import '../get_tags_filter_not_tags/get_tags_filter_not_tags.dart';

class GetTagsFilterNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final GetTagsFilterNotCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final GetTagsFilterNotDimension? dimension;

  /// Tags that match your request.
  final GetTagsFilterNotTags? tags;

  GetTagsFilterNot({
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

  factory GetTagsFilterNot.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterNot(
      costCategory: map['costCategory'] == null
          ? null
          : GetTagsFilterNotCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : GetTagsFilterNotDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : GetTagsFilterNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
