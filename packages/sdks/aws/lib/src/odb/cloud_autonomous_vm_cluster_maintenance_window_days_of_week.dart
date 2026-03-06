// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  final pulumi.Input<String> name;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek].
  /// [name] Required.
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

