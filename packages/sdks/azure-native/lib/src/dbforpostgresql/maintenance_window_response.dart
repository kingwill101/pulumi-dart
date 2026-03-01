// ignore_for_file: unused_element, unnecessary_cast


/// Maintenance window properties of a server.
class MaintenanceWindowResponse {
  /// Indicates whether custom window is enabled or disabled.
  final String? customWindow;
  /// Day of the week to be used for maintenance window.
  final int? dayOfWeek;
  /// Start hour to be used for maintenance window.
  final int? startHour;
  /// Start minute to be used for maintenance window.
  final int? startMinute;

  /// Creates a new [MaintenanceWindowResponse].
  /// [customWindow] Indicates whether custom window is enabled or disabled.
  /// [dayOfWeek] Day of the week to be used for maintenance window.
  /// [startHour] Start hour to be used for maintenance window.
  /// [startMinute] Start minute to be used for maintenance window.
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

