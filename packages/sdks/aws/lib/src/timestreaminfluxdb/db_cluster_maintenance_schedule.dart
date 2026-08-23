// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbClusterMaintenanceSchedule {
  /// Preferred maintenance window in the format `ddd:HH:MM-ddd:HH:MM`. Day must be one of `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, or `Sun`. Provide an empty string to let the system choose a window.
  final pulumi.Input<String> preferredMaintenanceWindow;
  /// IANA timezone identifier for the maintenance window. For example, `America/New_York` or `UTC`.
  final pulumi.Input<String> timezone;

  /// Creates a new [DbClusterMaintenanceSchedule].
  /// [preferredMaintenanceWindow] Preferred maintenance window in the format `ddd:HH:MM-ddd:HH:MM`. Day must be one of `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, or `Sun`. Provide an empty string to let the system choose a window.
  /// [timezone] IANA timezone identifier for the maintenance window. For example, `America/New_York` or `UTC`.
  const DbClusterMaintenanceSchedule({
    required this.preferredMaintenanceWindow,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredMaintenanceWindow': preferredMaintenanceWindow,
      'timezone': timezone,
    };
  }

  factory DbClusterMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return DbClusterMaintenanceSchedule(
      preferredMaintenanceWindow: pulumi.Input.fromValue(map['preferredMaintenanceWindow'] as String),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
    );
  }
}
