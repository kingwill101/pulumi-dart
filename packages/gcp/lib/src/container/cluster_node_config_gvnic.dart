// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeConfigGvnic {
  /// Whether or not the Google Virtual NIC (gVNIC) is enabled
  final bool enabled;

  /// Creates a new [ClusterNodeConfigGvnic].
  /// [enabled] Whether or not the Google Virtual NIC (gVNIC) is enabled
  ClusterNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGvnic(
      enabled: map['enabled'] as bool,
    );
  }
}

