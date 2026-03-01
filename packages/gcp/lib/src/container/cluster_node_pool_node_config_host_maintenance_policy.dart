// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  /// Creates a new [ClusterNodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  ClusterNodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maintenanceInterval': maintenanceInterval};
  }

  factory ClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
