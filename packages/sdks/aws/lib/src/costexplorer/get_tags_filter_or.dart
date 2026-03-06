// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter_or_cost_category.dart';
import 'get_tags_filter_or_dimension.dart';
import 'get_tags_filter_or_tags.dart';

class GetTagsFilterOr {
  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final pulumi.Input<GetTagsFilterOrCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final pulumi.Input<GetTagsFilterOrDimension>? dimension;
  /// Tags that match your request.
  final pulumi.Input<GetTagsFilterOrTags>? tags;

  /// Creates a new [GetTagsFilterOr].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  /// [tags] Tags that match your request.
  const GetTagsFilterOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterOrCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterOrDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterOrTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetTagsFilterOr.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterOr(
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterOrCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterOrDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterOrTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

