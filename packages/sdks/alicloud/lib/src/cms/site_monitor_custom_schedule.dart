// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteMonitorCustomSchedule {
  /// The days in a week.
  final pulumi.Input<List<int>>? days;

  /// The end time of the detection. Unit: hours.
  final pulumi.Input<int>? endHour;

  /// The start time of the detection. Unit: hours.
  final pulumi.Input<int>? startHour;

  /// The time zone of the detection.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [SiteMonitorCustomSchedule].
  /// [days] The days in a week.
  /// [endHour] The end time of the detection. Unit: hours.
  /// [startHour] The start time of the detection. Unit: hours.
  /// [timeZone] The time zone of the detection.
  SiteMonitorCustomSchedule({
    this.days,
    this.endHour,
    this.startHour,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'endHour': ?endHour,
      'startHour': ?startHour,
      'timeZone': ?timeZone,
    };
  }

  factory SiteMonitorCustomSchedule.fromMap(Map<String, dynamic> map) {
    return SiteMonitorCustomSchedule(
      days: (() {
        final guardedValue = map['days'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      endHour: (() {
        final guardedValue = map['endHour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startHour: (() {
        final guardedValue = map['startHour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
