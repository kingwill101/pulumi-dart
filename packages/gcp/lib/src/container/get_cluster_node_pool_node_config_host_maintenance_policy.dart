// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  /// Creates a new [GetClusterNodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  GetClusterNodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceInterval'] = maintenanceInterval;
    return map;
  }

  factory GetClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
