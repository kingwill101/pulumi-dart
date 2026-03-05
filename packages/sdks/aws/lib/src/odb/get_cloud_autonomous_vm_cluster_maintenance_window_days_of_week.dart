// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  final pulumi.Input<String> name;

  /// Creates a new [GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek].
  /// [name] Required.
  GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

