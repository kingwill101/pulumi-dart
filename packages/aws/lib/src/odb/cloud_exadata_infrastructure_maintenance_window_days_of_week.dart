// ignore_for_file: unused_element, unnecessary_cast

class CloudExadataInfrastructureMaintenanceWindowDaysOfWeek {
  final String name;

  /// Creates a new [CloudExadataInfrastructureMaintenanceWindowDaysOfWeek].
  /// [name] Required.
  CloudExadataInfrastructureMaintenanceWindowDaysOfWeek({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory CloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudExadataInfrastructureMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}
