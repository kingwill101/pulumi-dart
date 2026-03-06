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
  final pulumi.Input<List<GetTagsFilterAnd>>? ands;
  /// Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  final pulumi.Input<GetTagsFilterCostCategory>? costCategory;
  /// Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  final pulumi.Input<GetTagsFilterDimension>? dimension;
  /// Return results that match both `Dimension` object.
  final pulumi.Input<GetTagsFilterNot>? not;
  /// Return results that match both `Dimension` object.
  final pulumi.Input<List<GetTagsFilterOr>>? ors;
  /// Tags that match your request.
  final pulumi.Input<GetTagsFilterTags>? tags;

  /// Creates a new [GetTagsFilter].
  /// [ands] Return results that match both `Dimension` objects.
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See `cost_category` block below for details.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See `dimension` block below for details.
  /// [not] Return results that match both `Dimension` object.
  /// [ors] Return results that match both `Dimension` object.
  /// [tags] Tags that match your request.
  const GetTagsFilter({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<GetTagsFilterAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<GetTagsFilterAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategory': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<GetTagsFilterOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<GetTagsFilterOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<GetTagsFilterTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetTagsFilter.fromMap(Map<String, dynamic> map) {
    return GetTagsFilter(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTagsFilterAnd>(guardedValue, (value) => GetTagsFilterAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTagsFilterOr>(guardedValue, (value) => GetTagsFilterOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTagsFilterTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

