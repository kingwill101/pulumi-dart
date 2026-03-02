// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance window properties of a server.
class MaintenanceWindow {
  /// Indicates whether custom window is enabled or disabled.
  final pulumi.Input<String>? customWindow;
  /// Day of the week to be used for maintenance window.
  final pulumi.Input<int>? dayOfWeek;
  /// Start hour to be used for maintenance window.
  final pulumi.Input<int>? startHour;
  /// Start minute to be used for maintenance window.
  final pulumi.Input<int>? startMinute;

  /// Creates a new [MaintenanceWindow].
  /// [customWindow] Indicates whether custom window is enabled or disabled.
  /// [dayOfWeek] Day of the week to be used for maintenance window.
  /// [startHour] Start hour to be used for maintenance window.
  /// [startMinute] Start minute to be used for maintenance window.
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
      customWindow: map['customWindow'] == null ? null : (map['customWindow'] as String).input(),
      dayOfWeek: map['dayOfWeek'] == null ? null : (map['dayOfWeek'] as int).input(),
      startHour: map['startHour'] == null ? null : (map['startHour'] as int).input(),
      startMinute: map['startMinute'] == null ? null : (map['startMinute'] as int).input(),
    );
  }
}

