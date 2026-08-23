// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppQuietTime {
  /// Default end time for quiet time in ISO 8601 format. Required if `start` is set.
  final pulumi.Input<String>? end;
  /// Default start time for quiet time in ISO 8601 format. Required if `end` is set.
  final pulumi.Input<String>? start;

  /// Creates a new [AppQuietTime].
  /// [end] Default end time for quiet time in ISO 8601 format. Required if `start` is set.
  /// [start] Default start time for quiet time in ISO 8601 format. Required if `end` is set.
  const AppQuietTime({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory AppQuietTime.fromMap(Map<String, dynamic> map) {
    return AppQuietTime(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
