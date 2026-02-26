// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  ClusterNodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceInterval'] = maintenanceInterval;
    return map;
  }

  factory ClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
