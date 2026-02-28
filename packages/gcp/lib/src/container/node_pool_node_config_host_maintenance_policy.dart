// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final String maintenanceInterval;

  /// Creates a new [NodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  NodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceInterval'] = maintenanceInterval;
    return map;
  }

  factory NodePoolNodeConfigHostMaintenancePolicy.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] as String,
    );
  }
}
