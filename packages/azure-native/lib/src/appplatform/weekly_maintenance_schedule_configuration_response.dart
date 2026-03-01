// ignore_for_file: unused_element, unnecessary_cast


/// Weekly planned maintenance
class WeeklyMaintenanceScheduleConfigurationResponse {
  /// The day to run the maintenance job
  final String day;
  /// The duration time to run the maintenance job, specified in ISO8601 format, e.g. PT8H
  final String duration;
  /// The frequency to run the maintenance job
  /// Expected value is 'Weekly'.
  final String frequency;
  /// The hour to run the maintenance job
  final int hour;

  /// Creates a new [WeeklyMaintenanceScheduleConfigurationResponse].
  /// [day] The day to run the maintenance job
  /// [duration] The duration time to run the maintenance job, specified in ISO8601 format, e.g. PT8H
  /// [frequency] The frequency to run the maintenance job
  /// [hour] The hour to run the maintenance job
  WeeklyMaintenanceScheduleConfigurationResponse({
    required this.day,
    required this.duration,
    required this.frequency,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'frequency': frequency,
      'hour': hour,
    };
  }

  factory WeeklyMaintenanceScheduleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceScheduleConfigurationResponse(
      day: map['day'] as String,
      duration: map['duration'] as String,
      frequency: map['frequency'] as String,
      hour: map['hour'] as int,
    );
  }
}

