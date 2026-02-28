// ignore_for_file: unused_element, unnecessary_cast

class GetClusterDiscoveryEndpointPscConfig {
  /// The consumer network where the network address of the discovery
  /// endpoint will be reserved, in the form of
  /// projects/{network_project_id}/global/networks/{network_id}.
  final String network;

  /// Creates a new [GetClusterDiscoveryEndpointPscConfig].
  /// [network] The consumer network where the network address of the discovery
  GetClusterDiscoveryEndpointPscConfig({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    return map;
  }

  factory GetClusterDiscoveryEndpointPscConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterDiscoveryEndpointPscConfig(
      network: map['network'] as String,
    );
  }
}
