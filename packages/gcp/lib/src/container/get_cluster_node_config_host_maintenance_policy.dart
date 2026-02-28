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
    final map = <String, dynamic>{};
    map['maintenanceInterval'] = maintenanceInterval;
    return map;
  }

  factory GetClusterNodeConfigHostMaintenancePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
