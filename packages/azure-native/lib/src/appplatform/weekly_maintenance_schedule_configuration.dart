// ignore_for_file: unused_element, unnecessary_cast


/// Weekly planned maintenance
class WeeklyMaintenanceScheduleConfiguration {
  /// The day to run the maintenance job
  final String day;
  /// The frequency to run the maintenance job
  /// Expected value is 'Weekly'.
  final String frequency;
  /// The hour to run the maintenance job
  final int hour;

  /// Creates a new [WeeklyMaintenanceScheduleConfiguration].
  /// [day] The day to run the maintenance job
  /// [frequency] The frequency to run the maintenance job
  /// [hour] The hour to run the maintenance job
  WeeklyMaintenanceScheduleConfiguration({
    required this.day,
    required this.frequency,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'frequency': frequency,
      'hour': hour,
    };
  }

  factory WeeklyMaintenanceScheduleConfiguration.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceScheduleConfiguration(
      day: map['day'] as String,
      frequency: map['frequency'] as String,
      hour: map['hour'] as int,
    );
  }
}

