// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterNodeConfig {
  /// The maximum number of pods a node can run. The size of the CIDR range
  /// assigned to the node will be derived from this parameter.
  final int? maxPodsPerNode;

  /// Creates a new [BareMetalAdminClusterNodeConfig].
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range
  BareMetalAdminClusterNodeConfig({
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    return map;
  }

  factory BareMetalAdminClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterNodeConfig(
      maxPodsPerNode:
          map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
    );
  }
}
