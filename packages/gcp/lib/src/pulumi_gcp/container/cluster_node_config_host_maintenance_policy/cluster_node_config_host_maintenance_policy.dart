// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  ClusterNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceInterval'] = maintenanceInterval;
    return map;
  }

  factory ClusterNodeConfigHostMaintenancePolicy.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
