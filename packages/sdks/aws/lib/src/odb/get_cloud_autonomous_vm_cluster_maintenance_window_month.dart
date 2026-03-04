// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudAutonomousVmClusterMaintenanceWindowMonth {
  final pulumi.Input<String> name;

  /// Creates a new [GetCloudAutonomousVmClusterMaintenanceWindowMonth].
  /// [name] Required.
  GetCloudAutonomousVmClusterMaintenanceWindowMonth({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudAutonomousVmClusterMaintenanceWindowMonth(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
