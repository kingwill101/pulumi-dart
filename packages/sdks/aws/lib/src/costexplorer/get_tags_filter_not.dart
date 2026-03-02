// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter_not_cost_category.dart';
import 'get_tags_filter_not_dimension.dart';
import 'get_tags_filter_not_tags.dart';

class GetTagsFilterNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final pulumi.Input<GetTagsFilterNotCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final pulumi.Input<GetTagsFilterNotDimension>? dimension;
  /// Tags that match your request.
  final pulumi.Input<GetTagsFilterNotTags>? tags;

  /// Creates a new [GetTagsFilterNot].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  /// [tags] Tags that match your request.
  GetTagsFilterNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterNotCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterNotDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetTagsFilterNot.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterNot(
      costCategory: map['costCategory'] == null ? null : ((GetTagsFilterNotCostCategory.fromMap((map['costCategory']! as Map).cast<String, dynamic>())).input()).input(),
      dimension: map['dimension'] == null ? null : ((GetTagsFilterNotDimension.fromMap((map['dimension']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((GetTagsFilterNotTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

