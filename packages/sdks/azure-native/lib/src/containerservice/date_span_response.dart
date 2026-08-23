// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A date range. For example, between '2022-12-23' and '2023-01-05'.
class DateSpanResponse {
  /// The end date of the date span.
  final pulumi.Input<String> end;
  /// The start date of the date span.
  final pulumi.Input<String> start;

  /// Creates a new [DateSpanResponse].
  /// [end] The end date of the date span.
  /// [start] The start date of the date span.
  const DateSpanResponse({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory DateSpanResponse.fromMap(Map<String, dynamic> map) {
    return DateSpanResponse(
      end: pulumi.Input.fromValue(map['end'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
