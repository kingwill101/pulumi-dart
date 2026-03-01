// ignore_for_file: unused_element, unnecessary_cast


/// Schedule settings for regular cluster updates.
class ServerGroupClusterMaintenanceWindowResponse {
  /// Indicates whether custom maintenance window is enabled or not.
  final String? customWindow;
  /// Preferred day of the week for maintenance window.
  final int? dayOfWeek;
  /// Start hour within preferred day of the week for maintenance window.
  final int? startHour;
  /// Start minute within the start hour for maintenance window.
  final int? startMinute;

  /// Creates a new [ServerGroupClusterMaintenanceWindowResponse].
  /// [customWindow] Indicates whether custom maintenance window is enabled or not.
  /// [dayOfWeek] Preferred day of the week for maintenance window.
  /// [startHour] Start hour within preferred day of the week for maintenance window.
  /// [startMinute] Start minute within the start hour for maintenance window.
  ServerGroupClusterMaintenanceWindowResponse({
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

  factory ServerGroupClusterMaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return ServerGroupClusterMaintenanceWindowResponse(
      customWindow: map['customWindow'] == null ? null : map['customWindow'] as String,
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
      startMinute: map['startMinute'] == null ? null : map['startMinute'] as int,
    );
  }
}

