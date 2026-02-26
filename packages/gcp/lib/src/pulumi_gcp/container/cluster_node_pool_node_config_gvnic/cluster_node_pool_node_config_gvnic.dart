// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigGvnic {
  /// Whether or not the Google Virtual NIC (gVNIC) is enabled
  final bool enabled;

  ClusterNodePoolNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodePoolNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGvnic(
      enabled: map['enabled'] as bool,
    );
  }
}
