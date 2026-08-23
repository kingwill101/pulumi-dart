// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructureMaintenanceWindowMonth {
  final pulumi.Input<String> name;

  /// Creates a new [GetCloudExadataInfrastructureMaintenanceWindowMonth].
  /// [name] Required.
  const GetCloudExadataInfrastructureMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindowMonth(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
