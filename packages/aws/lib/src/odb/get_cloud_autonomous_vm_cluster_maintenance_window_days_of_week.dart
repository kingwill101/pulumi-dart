// ignore_for_file: unused_element, unnecessary_cast

class GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  final String name;

  /// Creates a new [GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek].
  /// [name] Required.
  GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}
