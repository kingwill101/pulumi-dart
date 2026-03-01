// ignore_for_file: unused_element, unnecessary_cast


class ServerlessKubernetesMaintenanceWindow {
  /// The maintenance time, values range from 1 to 24,unit is hour. For example: "3h".
  final String? duration;
  /// Whether to open the maintenance window. The following parameters take effect only `enable = true`.
  final bool? enable;
  /// Initial maintenance time, RFC3339 format. For example: "2024-10-15T12:31:00.000+08:00".
  final String? maintenanceTime;
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
  final String? weeklyPeriod;

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

  factory ServerlessKubernetesMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesMaintenanceWindow(
      duration: map['duration'] == null ? null : map['duration'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      maintenanceTime: map['maintenanceTime'] == null ? null : map['maintenanceTime'] as String,
      weeklyPeriod: map['weeklyPeriod'] == null ? null : map['weeklyPeriod'] as String,
    );
  }
}

