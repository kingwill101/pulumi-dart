// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_data_filter_expression_dimensions.dart';
import 'view_data_filter_expression_tag.dart';
import 'view_data_filter_expression_time_range.dart';

class ViewDataFilterExpression {
  /// Dimension to use for `expression`. Refer to #dimensions for more details.
  final ViewDataFilterExpressionDimensions? dimensions;

  /// List of key value map specifying tags associated to the billing view being created.
  final List<ViewDataFilterExpressionTag>? tags;

  /// Time range to use for `expression`. Refer to #time-range for more details.
  final ViewDataFilterExpressionTimeRange? timeRange;

  /// Creates a new [ViewDataFilterExpression].
  /// [dimensions] Dimension to use for `expression`. Refer to #dimensions for more details.
  /// [tags] List of key value map specifying tags associated to the billing view being created.
  /// [timeRange] Time range to use for `expression`. Refer to #time-range for more details.
  ViewDataFilterExpression({this.dimensions, this.tags, this.timeRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'tags': ?tags == null
          ? null
          : pulumi.Input.encodeList<
              ViewDataFilterExpressionTag,
              Map<String, dynamic>
            >(tags!, (value) => value.toMap()),
      'timeRange': ?timeRange == null ? null : timeRange!.toMap(),
    };
  }

  factory ViewDataFilterExpression.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpression(
      dimensions: map['dimensions'] == null
          ? null
          : ViewDataFilterExpressionDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : pulumi.Input.decodeList<ViewDataFilterExpressionTag>(
              map['tags'],
              (value) => ViewDataFilterExpressionTag.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      timeRange: map['timeRange'] == null
          ? null
          : ViewDataFilterExpressionTimeRange.fromMap(
              (map['timeRange'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
