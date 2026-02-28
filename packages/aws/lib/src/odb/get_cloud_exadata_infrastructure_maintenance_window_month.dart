// ignore_for_file: unused_element, unnecessary_cast


class GetCloudExadataInfrastructureMaintenanceWindowMonth {
  final String name;

  /// Creates a new [GetCloudExadataInfrastructureMaintenanceWindowMonth].
  /// [name] Required.
  GetCloudExadataInfrastructureMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}

