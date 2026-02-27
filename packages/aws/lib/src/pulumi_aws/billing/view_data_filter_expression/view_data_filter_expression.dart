// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../view_data_filter_expression_dimensions/view_data_filter_expression_dimensions.dart';
import '../view_data_filter_expression_tag/view_data_filter_expression_tag.dart';
import '../view_data_filter_expression_time_range/view_data_filter_expression_time_range.dart';

class ViewDataFilterExpression {
  /// Dimension to use for `expression`. Refer to #dimensions for more details.
  final ViewDataFilterExpressionDimensions? dimensions;

  /// List of key value map specifying tags associated to the billing view being created.
  final List<ViewDataFilterExpressionTag>? tags;

  /// Time range to use for `expression`. Refer to #time-range for more details.
  final ViewDataFilterExpressionTimeRange? timeRange;

  ViewDataFilterExpression({
    this.dimensions,
    this.tags,
    this.timeRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] =
          Input.encodeList<ViewDataFilterExpressionTag, Map<String, dynamic>>(
              tagsValue, (value) => value.toMap());
    }
    final timeRangeValue = timeRange;
    if (timeRangeValue != null) {
      map['timeRange'] = timeRangeValue.toMap();
    }
    return map;
  }

  factory ViewDataFilterExpression.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpression(
      dimensions: map['dimensions'] == null
          ? null
          : ViewDataFilterExpressionDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : Input.decodeList<ViewDataFilterExpressionTag>(
              map['tags'],
              (value) => ViewDataFilterExpressionTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timeRange: map['timeRange'] == null
          ? null
          : ViewDataFilterExpressionTimeRange.fromMap(
              (map['timeRange'] as Map).cast<String, dynamic>()),
    );
  }
}
