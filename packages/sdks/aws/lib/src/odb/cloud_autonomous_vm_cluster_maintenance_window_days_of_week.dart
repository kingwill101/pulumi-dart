// ignore_for_file: unused_element, unnecessary_cast


class CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek {
  final String name;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek].
  /// [name] Required.
  CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek(
      name: map['name'] as String,
    );
  }
}

