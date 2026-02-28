// ignore_for_file: unused_element, unnecessary_cast

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindowResponseMetastoreV1alpha {
  /// The day of week, when the window starts.
  final String dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final int hourOfDay;

  /// Creates a new [MaintenanceWindowResponseMetastoreV1alpha].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MaintenanceWindowResponseMetastoreV1alpha({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['hourOfDay'] = hourOfDay;
    return map;
  }

  factory MaintenanceWindowResponseMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowResponseMetastoreV1alpha(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}
