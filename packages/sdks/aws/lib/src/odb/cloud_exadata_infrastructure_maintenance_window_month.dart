// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudExadataInfrastructureMaintenanceWindowMonth {
  final pulumi.Input<String> name;

  /// Creates a new [CloudExadataInfrastructureMaintenanceWindowMonth].
  /// [name] Required.
  const CloudExadataInfrastructureMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudExadataInfrastructureMaintenanceWindowMonth.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureMaintenanceWindowMonth(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

