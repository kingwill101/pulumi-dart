// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigGvnic {
  /// Whether or not the Google Virtual NIC (gVNIC) is enabled
  final bool enabled;

  /// Creates a new [ClusterNodePoolNodeConfigGvnic].
  /// [enabled] Whether or not the Google Virtual NIC (gVNIC) is enabled
  ClusterNodePoolNodeConfigGvnic({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodePoolNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGvnic(enabled: map['enabled'] as bool);
  }
}
