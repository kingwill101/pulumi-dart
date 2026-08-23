// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  /// Name of the day of the week. Valid values are `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, and `SUNDAY`.
  final pulumi.Input<String> name;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek].
  /// [name] Name of the day of the week. Valid values are `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, and `SUNDAY`.
  const CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
