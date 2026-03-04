// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A time range. For example, between 2021-05-25T13:00:00Z and 2021-05-25T14:00:00Z.
class TimeSpanResponse {
  /// The end of a time span
  final pulumi.Input<String>? end;

  /// The start of a time span
  final pulumi.Input<String>? start;

  /// Creates a new [TimeSpanResponse].
  /// [end] The end of a time span
  /// [start] The start of a time span
  TimeSpanResponse({this.end, this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': ?end, 'start': ?start};
  }

  factory TimeSpanResponse.fromMap(Map<String, dynamic> map) {
    return TimeSpanResponse(
      end: (() {
        final guardedValue = map['end'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      start: (() {
        final guardedValue = map['start'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
