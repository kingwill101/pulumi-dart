// ignore_for_file: unused_element, unnecessary_cast

class ClusterRemoteNetworkConfigRemoteNodeNetworks {
  /// List of network CIDRs that can contain hybrid nodes.
  final List<String>? cidrs;

  /// Creates a new [ClusterRemoteNetworkConfigRemoteNodeNetworks].
  /// [cidrs] List of network CIDRs that can contain hybrid nodes.
  ClusterRemoteNetworkConfigRemoteNodeNetworks({this.cidrs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidrs': ?cidrs};
  }

  factory ClusterRemoteNetworkConfigRemoteNodeNetworks.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterRemoteNetworkConfigRemoteNodeNetworks(
      cidrs: map['cidrs'] == null
          ? null
          : (map['cidrs'] as List).cast<String>(),
    );
  }
}
