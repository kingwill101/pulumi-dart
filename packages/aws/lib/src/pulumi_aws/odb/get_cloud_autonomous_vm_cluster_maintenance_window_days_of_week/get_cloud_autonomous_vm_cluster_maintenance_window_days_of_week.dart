// ignore_for_file: unused_element, unnecessary_cast

class GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  final String name;

  GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(
      Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}
