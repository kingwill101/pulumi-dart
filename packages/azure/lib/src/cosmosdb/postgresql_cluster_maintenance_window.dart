// ignore_for_file: unused_element, unnecessary_cast


class PostgresqlClusterMaintenanceWindow {
  /// The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = `0`, Monday = `1`. Defaults to `0`.
  final int? dayOfWeek;
  /// The start hour for maintenance window. Defaults to `0`.
  final int? startHour;
  /// The start minute for maintenance window. Defaults to `0`.
  final int? startMinute;

  /// Creates a new [PostgresqlClusterMaintenanceWindow].
  /// [dayOfWeek] The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = `0`, Monday = `1`. Defaults to `0`.
  /// [startHour] The start hour for maintenance window. Defaults to `0`.
  /// [startMinute] The start minute for maintenance window. Defaults to `0`.
  PostgresqlClusterMaintenanceWindow({
    this.dayOfWeek,
    this.startHour,
    this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'startHour': ?startHour,
      'startMinute': ?startMinute,
    };
  }

  factory PostgresqlClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return PostgresqlClusterMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
      startMinute: map['startMinute'] == null ? null : map['startMinute'] as int,
    );
  }
}

