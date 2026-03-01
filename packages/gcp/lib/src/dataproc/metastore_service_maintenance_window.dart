// ignore_for_file: unused_element, unnecessary_cast


class MetastoreServiceMaintenanceWindow {
  /// The day of week, when the window starts.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String dayOfWeek;
  /// The hour of day (0-23) when the window starts.
  final int hourOfDay;

  /// Creates a new [MetastoreServiceMaintenanceWindow].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MetastoreServiceMaintenanceWindow({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'hourOfDay': hourOfDay,
    };
  }

  factory MetastoreServiceMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}

