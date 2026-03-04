// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance window properties of a server.
class MaintenanceWindowResponse {
  /// Indicates whether custom window is enabled or disabled.
  final pulumi.Input<String>? customWindow;

  /// Day of the week to be used for maintenance window.
  final pulumi.Input<int>? dayOfWeek;

  /// Start hour to be used for maintenance window.
  final pulumi.Input<int>? startHour;

  /// Start minute to be used for maintenance window.
  final pulumi.Input<int>? startMinute;

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
      customWindow: (() {
        final guardedValue = map['customWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dayOfWeek: (() {
        final guardedValue = map['dayOfWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startHour: (() {
        final guardedValue = map['startHour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startMinute: (() {
        final guardedValue = map['startMinute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
