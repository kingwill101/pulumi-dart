// ignore_for_file: unused_element, unnecessary_cast

class CloudExadataInfrastructureMaintenanceWindowMonth {
  final String name;

  /// Creates a new [CloudExadataInfrastructureMaintenanceWindowMonth].
  /// [name] Required.
  CloudExadataInfrastructureMaintenanceWindowMonth({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory CloudExadataInfrastructureMaintenanceWindowMonth.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudExadataInfrastructureMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}
