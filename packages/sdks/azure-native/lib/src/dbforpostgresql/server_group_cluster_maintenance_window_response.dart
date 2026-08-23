// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule settings for regular cluster updates.
class ServerGroupClusterMaintenanceWindowResponse {
  /// Indicates whether custom maintenance window is enabled or not.
  final pulumi.Input<String>? customWindow;
  /// Preferred day of the week for maintenance window.
  final pulumi.Input<int>? dayOfWeek;
  /// Start hour within preferred day of the week for maintenance window.
  final pulumi.Input<int>? startHour;
  /// Start minute within the start hour for maintenance window.
  final pulumi.Input<int>? startMinute;

  /// Creates a new [ServerGroupClusterMaintenanceWindowResponse].
  /// [customWindow] Indicates whether custom maintenance window is enabled or not.
  /// [dayOfWeek] Preferred day of the week for maintenance window.
  /// [startHour] Start hour within preferred day of the week for maintenance window.
  /// [startMinute] Start minute within the start hour for maintenance window.
  const ServerGroupClusterMaintenanceWindowResponse({
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
      customWindow: (() { final guardedValue = map['customWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startHour: (() { final guardedValue = map['startHour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startMinute: (() { final guardedValue = map['startMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
