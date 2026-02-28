// ignore_for_file: unused_element, unnecessary_cast

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindowResponse {
  /// The day of week, when the window starts.
  final String dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int hourOfDay;

  /// Creates a new [MaintenanceWindowResponse].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MaintenanceWindowResponse({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['hourOfDay'] = hourOfDay;
    return map;
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}
