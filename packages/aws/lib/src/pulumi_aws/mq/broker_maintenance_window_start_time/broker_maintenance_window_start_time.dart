// ignore_for_file: unused_element, unnecessary_cast

class BrokerMaintenanceWindowStartTime {
  /// Day of the week, e.g., `MONDAY`, `TUESDAY`, or `WEDNESDAY`.
  final String dayOfWeek;

  /// Time, in 24-hour format, e.g., `02:00`.
  final String timeOfDay;

  /// Time zone in either the Country/City format or the UTC offset format, e.g., `CET`.
  final String timeZone;

  BrokerMaintenanceWindowStartTime({
    required this.dayOfWeek,
    required this.timeOfDay,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['timeOfDay'] = timeOfDay;
    map['timeZone'] = timeZone;
    return map;
  }

  factory BrokerMaintenanceWindowStartTime.fromMap(Map<String, dynamic> map) {
    return BrokerMaintenanceWindowStartTime(
      dayOfWeek: map['dayOfWeek'] as String,
      timeOfDay: map['timeOfDay'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
