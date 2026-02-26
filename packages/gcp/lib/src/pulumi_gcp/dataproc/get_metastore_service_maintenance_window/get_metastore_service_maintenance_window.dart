// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceMaintenanceWindow {
  /// The day of week, when the window starts. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final String dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int hourOfDay;

  GetMetastoreServiceMaintenanceWindow({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['hourOfDay'] = hourOfDay;
    return map;
  }

  factory GetMetastoreServiceMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}
