// ignore_for_file: unused_element, unnecessary_cast

class GetCloudAutonomousVmClusterMaintenanceWindowMonth {
  final String name;

  /// Creates a new [GetCloudAutonomousVmClusterMaintenanceWindowMonth].
  /// [name] Required.
  GetCloudAutonomousVmClusterMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(
      Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}
