// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  /// Creates a new [GetClusterNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  GetClusterNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maintenanceInterval': maintenanceInterval};
  }

  factory GetClusterNodeConfigHostMaintenancePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
