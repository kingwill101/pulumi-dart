// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_data_filter_expression_dimensions.dart';
import 'view_data_filter_expression_tag.dart';
import 'view_data_filter_expression_time_range.dart';

class ViewDataFilterExpression {
  /// Dimension to use for `expression`. Refer to #dimensions for more details.
  final pulumi.Input<ViewDataFilterExpressionDimensions?>? dimensions;
  /// List of key value map specifying tags associated to the billing view being created.
  final pulumi.Input<List<ViewDataFilterExpressionTag>?>? tags;
  /// Time range to use for `expression`. Refer to #time-range for more details.
  final pulumi.Input<ViewDataFilterExpressionTimeRange?>? timeRange;

  /// Creates a new [ViewDataFilterExpression].
  /// [dimensions] Dimension to use for `expression`. Refer to #dimensions for more details.
  /// [tags] List of key value map specifying tags associated to the billing view being created.
  /// [timeRange] Time range to use for `expression`. Refer to #time-range for more details.
  const ViewDataFilterExpression({
    this.dimensions,
    this.tags,
    this.timeRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<ViewDataFilterExpressionDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<ViewDataFilterExpressionTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<ViewDataFilterExpressionTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeRange': ?pulumi.Input.mapOptionalInputValue<ViewDataFilterExpressionTimeRange, Map<String, dynamic>>(timeRange, (value) => value.toMap()),
    };
  }

  factory ViewDataFilterExpression.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpression(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ViewDataFilterExpressionDimensions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ViewDataFilterExpressionTag>(guardedValue, (value) => ViewDataFilterExpressionTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeRange: (() { final guardedValue = map['timeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ViewDataFilterExpressionTimeRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
