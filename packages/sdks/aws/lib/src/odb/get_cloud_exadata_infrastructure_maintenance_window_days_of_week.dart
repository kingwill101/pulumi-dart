// ignore_for_file: unused_element, unnecessary_cast


class GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek {
  final String name;

  /// Creates a new [GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek].
  /// [name] Required.
  GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}

