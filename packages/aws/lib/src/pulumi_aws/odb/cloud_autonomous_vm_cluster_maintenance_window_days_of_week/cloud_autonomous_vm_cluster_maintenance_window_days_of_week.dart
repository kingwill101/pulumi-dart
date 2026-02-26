// ignore_for_file: unused_element, unnecessary_cast

class CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  final String name;

  CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(
      Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}
