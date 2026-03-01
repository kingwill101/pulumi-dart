// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the schedule.
class SchedulePropertiesResponse {
  /// UTC day on which cost analysis data will be emailed. Must be between 1 and 31. This property is applicable when frequency is Monthly and overrides weeksOfMonth or daysOfWeek.
  final int? dayOfMonth;
  /// Day names in english on which cost analysis data will be emailed. This property is applicable when frequency is Weekly or Monthly.
  final List<String>? daysOfWeek;
  /// The end date and time of the scheduled action (UTC).
  final String endDate;
  /// Frequency of the schedule.
  final String frequency;
  /// UTC time at which cost analysis data will be emailed.
  final int? hourOfDay;
  /// The start date and time of the scheduled action (UTC).
  final String startDate;
  /// Weeks in which cost analysis data will be emailed. This property is applicable when frequency is Monthly and used in combination with daysOfWeek.
  final List<String>? weeksOfMonth;

  /// Creates a new [SchedulePropertiesResponse].
  /// [dayOfMonth] UTC day on which cost analysis data will be emailed. Must be between 1 and 31. This property is applicable when frequency is Monthly and overrides weeksOfMonth or daysOfWeek.
  /// [daysOfWeek] Day names in english on which cost analysis data will be emailed. This property is applicable when frequency is Weekly or Monthly.
  /// [endDate] The end date and time of the scheduled action (UTC).
  /// [frequency] Frequency of the schedule.
  /// [hourOfDay] UTC time at which cost analysis data will be emailed.
  /// [startDate] The start date and time of the scheduled action (UTC).
  /// [weeksOfMonth] Weeks in which cost analysis data will be emailed. This property is applicable when frequency is Monthly and used in combination with daysOfWeek.
  SchedulePropertiesResponse({
    this.dayOfMonth,
    this.daysOfWeek,
    required this.endDate,
    required this.frequency,
    this.hourOfDay,
    required this.startDate,
    this.weeksOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'daysOfWeek': ?daysOfWeek,
      'endDate': endDate,
      'frequency': frequency,
      'hourOfDay': ?hourOfDay,
      'startDate': startDate,
      'weeksOfMonth': ?weeksOfMonth,
    };
  }

  factory SchedulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchedulePropertiesResponse(
      dayOfMonth: map['dayOfMonth'] == null ? null : map['dayOfMonth'] as int,
      daysOfWeek: map['daysOfWeek'] == null ? null : (map['daysOfWeek'] as List).cast<String>(),
      endDate: map['endDate'] as String,
      frequency: map['frequency'] as String,
      hourOfDay: map['hourOfDay'] == null ? null : map['hourOfDay'] as int,
      startDate: map['startDate'] as String,
      weeksOfMonth: map['weeksOfMonth'] == null ? null : (map['weeksOfMonth'] as List).cast<String>(),
    );
  }
}

