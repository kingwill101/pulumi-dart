// ignore_for_file: unused_element, unnecessary_cast

class CloudAutonomousVmClusterMaintenanceWindowMonth {
  final String name;

  CloudAutonomousVmClusterMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory CloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(
      Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}
