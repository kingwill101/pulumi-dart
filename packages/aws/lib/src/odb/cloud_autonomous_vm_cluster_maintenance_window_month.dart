// ignore_for_file: unused_element, unnecessary_cast


class CloudAutonomousVmClusterMaintenanceWindowMonth {
  final String name;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindowMonth].
  /// [name] Required.
  CloudAutonomousVmClusterMaintenanceWindowMonth({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowMonth(
      name: map['name'] as String,
    );
  }
}

