// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_data_filter_expression_dimensions.dart';
import 'view_data_filter_expression_tag.dart';
import 'view_data_filter_expression_time_range.dart';

class ViewDataFilterExpression {
  /// Dimension to use for `expression`. Refer to #dimensions for more details.
  final pulumi.Input<ViewDataFilterExpressionDimensions>? dimensions;
  /// List of key value map specifying tags associated to the billing view being created.
  final pulumi.Input<List<ViewDataFilterExpressionTag>>? tags;
  /// Time range to use for `expression`. Refer to #time-range for more details.
  final pulumi.Input<ViewDataFilterExpressionTimeRange>? timeRange;

  /// Creates a new [ViewDataFilterExpression].
  /// [dimensions] Dimension to use for `expression`. Refer to #dimensions for more details.
  /// [tags] List of key value map specifying tags associated to the billing view being created.
  /// [timeRange] Time range to use for `expression`. Refer to #time-range for more details.
  ViewDataFilterExpression({
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
      dimensions: map['dimensions'] == null ? null : ((ViewDataFilterExpressionDimensions.fromMap((map['dimensions']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((pulumi.Input.decodeList<ViewDataFilterExpressionTag>(map['tags']!, (value) => ViewDataFilterExpressionTag.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      timeRange: map['timeRange'] == null ? null : ((ViewDataFilterExpressionTimeRange.fromMap((map['timeRange']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

