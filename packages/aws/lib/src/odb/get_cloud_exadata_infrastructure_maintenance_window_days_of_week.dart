// ignore_for_file: unused_element, unnecessary_cast

class GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek {
  final String name;

  /// Creates a new [GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek].
  /// [name] Required.
  GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}
