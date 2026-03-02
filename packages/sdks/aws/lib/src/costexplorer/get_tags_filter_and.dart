// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter_and_cost_category.dart';
import 'get_tags_filter_and_dimension.dart';
import 'get_tags_filter_and_tags.dart';

class GetTagsFilterAnd {
  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final pulumi.Input<GetTagsFilterAndCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final pulumi.Input<GetTagsFilterAndDimension>? dimension;
  /// Tags that match your request.
  final pulumi.Input<GetTagsFilterAndTags>? tags;

  /// Creates a new [GetTagsFilterAnd].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  /// [tags] Tags that match your request.
  GetTagsFilterAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterAndCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterAndDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterAndTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetTagsFilterAnd.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterAnd(
      costCategory: map['costCategory'] == null ? null : ((GetTagsFilterAndCostCategory.fromMap((map['costCategory']! as Map).cast<String, dynamic>())).input()).input(),
      dimension: map['dimension'] == null ? null : ((GetTagsFilterAndDimension.fromMap((map['dimension']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((GetTagsFilterAndTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

