// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ViewDataFilterExpressionTimeRange {
  /// Inclusive end date of the time range.
  final pulumi.Input<String> beginDateInclusive;
  final pulumi.Input<String> endDateInclusive;

  /// Creates a new [ViewDataFilterExpressionTimeRange].
  /// [beginDateInclusive] Inclusive end date of the time range.
  /// [endDateInclusive] Required.
  ViewDataFilterExpressionTimeRange({
    required this.beginDateInclusive,
    required this.endDateInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginDateInclusive': beginDateInclusive,
      'endDateInclusive': endDateInclusive,
    };
  }

  factory ViewDataFilterExpressionTimeRange.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionTimeRange(
      beginDateInclusive: (map['beginDateInclusive'] as String).input(),
      endDateInclusive: (map['endDateInclusive'] as String).input(),
    );
  }
}

