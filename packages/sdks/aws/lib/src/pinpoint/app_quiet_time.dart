// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppQuietTime {
  /// The default end time for quiet time in ISO 8601 format. Required if `start` is set
  final pulumi.Input<String>? end;
  /// The default start time for quiet time in ISO 8601 format. Required if `end` is set
  final pulumi.Input<String>? start;

  /// Creates a new [AppQuietTime].
  /// [end] The default end time for quiet time in ISO 8601 format. Required if `start` is set
  /// [start] The default start time for quiet time in ISO 8601 format. Required if `end` is set
  AppQuietTime({
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
      end: map['end'] == null ? null : (map['end'] as String).input(),
      start: map['start'] == null ? null : (map['start'] as String).input(),
    );
  }
}

