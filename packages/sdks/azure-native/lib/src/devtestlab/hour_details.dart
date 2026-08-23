// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an hourly schedule.
class HourDetails {
  /// Minutes of the hour the schedule will run.
  final pulumi.Input<int>? minute;

  /// Creates a new [HourDetails].
  /// [minute] Minutes of the hour the schedule will run.
  const HourDetails({
    this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': ?minute,
    };
  }

  factory HourDetails.fromMap(Map<String, dynamic> map) {
    return HourDetails(
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
