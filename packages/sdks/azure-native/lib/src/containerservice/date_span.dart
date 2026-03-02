// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A date range. For example, between '2022-12-23' and '2023-01-05'.
class DateSpan {
  /// The end date of the date span.
  final pulumi.Input<String> end;
  /// The start date of the date span.
  final pulumi.Input<String> start;

  /// Creates a new [DateSpan].
  /// [end] The end date of the date span.
  /// [start] The start date of the date span.
  DateSpan({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory DateSpan.fromMap(Map<String, dynamic> map) {
    return DateSpan(
      end: (map['end'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

