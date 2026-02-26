// ignore_for_file: unused_element, unnecessary_cast

class MetastoreServiceMaintenanceWindow {
  /// The day of week, when the window starts.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int hourOfDay;

  MetastoreServiceMaintenanceWindow({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['hourOfDay'] = hourOfDay;
    return map;
  }

  factory MetastoreServiceMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}
