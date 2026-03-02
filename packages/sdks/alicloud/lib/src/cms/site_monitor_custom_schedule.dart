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
      days: map['days'] == null ? null : ((map['days'] as List).cast<int>()).input(),
      endHour: map['endHour'] == null ? null : (map['endHour'] as int).input(),
      startHour: map['startHour'] == null ? null : (map['startHour'] as int).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

