// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudAutonomousVmClusterMaintenanceWindowMonth {
  final pulumi.Input<String> name;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindowMonth].
  /// [name] Required.
  const CloudAutonomousVmClusterMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowMonth(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

