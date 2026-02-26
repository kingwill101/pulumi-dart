// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerMaintenanceWindowStartTime {
  /// Day of the week.
  final String dayOfWeek;

  /// Time, in 24-hour format.
  final String timeOfDay;

  /// Time zone in either the Country/City format or the UTC offset format.
  final String timeZone;

  GetBrokerMaintenanceWindowStartTime({
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

  factory GetBrokerMaintenanceWindowStartTime.fromMap(
      Map<String, dynamic> map) {
    return GetBrokerMaintenanceWindowStartTime(
      dayOfWeek: map['dayOfWeek'] as String,
      timeOfDay: map['timeOfDay'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
