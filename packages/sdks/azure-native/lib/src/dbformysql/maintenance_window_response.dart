// ignore_for_file: unused_element, unnecessary_cast


/// Maintenance window of a server.
class MaintenanceWindowResponse {
  /// indicates whether custom window is enabled or disabled
  final String? customWindow;
  /// day of week for maintenance window
  final int? dayOfWeek;
  /// start hour for maintenance window
  final int? startHour;
  /// start minute for maintenance window
  final int? startMinute;

  /// Creates a new [MaintenanceWindowResponse].
  /// [customWindow] indicates whether custom window is enabled or disabled
  /// [dayOfWeek] day of week for maintenance window
  /// [startHour] start hour for maintenance window
  /// [startMinute] start minute for maintenance window
  MaintenanceWindowResponse({
    this.customWindow,
    this.dayOfWeek,
    this.startHour,
    this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customWindow': ?customWindow,
      'dayOfWeek': ?dayOfWeek,
      'startHour': ?startHour,
      'startMinute': ?startMinute,
    };
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      customWindow: map['customWindow'] == null ? null : map['customWindow'] as String,
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
      startMinute: map['startMinute'] == null ? null : map['startMinute'] as int,
    );
  }
}

