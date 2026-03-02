// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance window of a server.
class MaintenanceWindowResponse {
  /// indicates whether custom window is enabled or disabled
  final pulumi.Input<String>? customWindow;
  /// day of week for maintenance window
  final pulumi.Input<int>? dayOfWeek;
  /// start hour for maintenance window
  final pulumi.Input<int>? startHour;
  /// start minute for maintenance window
  final pulumi.Input<int>? startMinute;

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
      customWindow: map['customWindow'] == null ? null : (map['customWindow']! as String).input(),
      dayOfWeek: map['dayOfWeek'] == null ? null : (map['dayOfWeek']! as int).input(),
      startHour: map['startHour'] == null ? null : (map['startHour']! as int).input(),
      startMinute: map['startMinute'] == null ? null : (map['startMinute']! as int).input(),
    );
  }
}

