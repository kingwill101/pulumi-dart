// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessKubernetesMaintenanceWindow {
  /// The maintenance time, values range from 1 to 24,unit is hour. For example: "3h".
  final pulumi.Input<String>? duration;

  /// Whether to open the maintenance window. The following parameters take effect only `enable = true`.
  final pulumi.Input<bool>? enable;

  /// Initial maintenance time, RFC3339 format. For example: "2024-10-15T12:31:00.000+08:00".
  final pulumi.Input<String>? maintenanceTime;

  /// Maintenance cycle, you can set the values from Monday to Sunday, separated by commas when the values are multiple. The default is Thursday.
  ///
  /// for example:
  /// ```
  /// maintenance_window {
  /// enable            = true
  /// maintenance_time  = "2024-10-15T12:31:00.000+08:00"
  /// duration          = "3h"
  /// weekly_period     = "Monday,Friday"
  /// }
  /// ```
  final pulumi.Input<String>? weeklyPeriod;

  /// Creates a new [ServerlessKubernetesMaintenanceWindow].
  /// [duration] The maintenance time, values range from 1 to 24,unit is hour. For example: "3h".
  /// [enable] Whether to open the maintenance window. The following parameters take effect only `enable = true`.
  /// [maintenanceTime] Initial maintenance time, RFC3339 format. For example: "2024-10-15T12:31:00.000+08:00".
  /// [weeklyPeriod] Maintenance cycle, you can set the values from Monday to Sunday, separated by commas when the values are multiple. The default is Thursday.
  ServerlessKubernetesMaintenanceWindow({
    this.duration,
    this.enable,
    this.maintenanceTime,
    this.weeklyPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'enable': ?enable,
      'maintenanceTime': ?maintenanceTime,
      'weeklyPeriod': ?weeklyPeriod,
    };
  }

  factory ServerlessKubernetesMaintenanceWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServerlessKubernetesMaintenanceWindow(
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maintenanceTime: (() {
        final guardedValue = map['maintenanceTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weeklyPeriod: (() {
        final guardedValue = map['weeklyPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
