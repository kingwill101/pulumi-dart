// ignore_for_file: unused_element, unnecessary_cast


class SiteMonitorCustomSchedule {
  /// The days in a week.
  final List<int>? days;
  /// The end time of the detection. Unit: hours.
  final int? endHour;
  /// The start time of the detection. Unit: hours.
  final int? startHour;
  /// The time zone of the detection.
  final String? timeZone;

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
      days: map['days'] == null ? null : (map['days'] as List).cast<int>(),
      endHour: map['endHour'] == null ? null : map['endHour'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

