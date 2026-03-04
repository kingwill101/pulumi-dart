// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance window of a server.
class MaintenanceWindow {
  /// indicates whether custom window is enabled or disabled
  final pulumi.Input<String>? customWindow;

  /// day of week for maintenance window
  final pulumi.Input<int>? dayOfWeek;

  /// start hour for maintenance window
  final pulumi.Input<int>? startHour;

  /// start minute for maintenance window
  final pulumi.Input<int>? startMinute;

  /// Creates a new [MaintenanceWindow].
  /// [customWindow] indicates whether custom window is enabled or disabled
  /// [dayOfWeek] day of week for maintenance window
  /// [startHour] start hour for maintenance window
  /// [startMinute] start minute for maintenance window
  MaintenanceWindow({
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

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
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
