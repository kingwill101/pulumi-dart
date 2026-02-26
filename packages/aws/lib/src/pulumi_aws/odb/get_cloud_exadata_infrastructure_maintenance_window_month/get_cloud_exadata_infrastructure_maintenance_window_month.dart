// ignore_for_file: unused_element, unnecessary_cast

class GetCloudExadataInfrastructureMaintenanceWindowMonth {
  final String name;

  GetCloudExadataInfrastructureMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}
