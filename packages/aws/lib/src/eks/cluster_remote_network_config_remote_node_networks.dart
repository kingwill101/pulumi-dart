// ignore_for_file: unused_element, unnecessary_cast

class ClusterRemoteNetworkConfigRemoteNodeNetworks {
  /// List of network CIDRs that can contain hybrid nodes.
  final List<String>? cidrs;

  /// Creates a new [ClusterRemoteNetworkConfigRemoteNodeNetworks].
  /// [cidrs] List of network CIDRs that can contain hybrid nodes.
  ClusterRemoteNetworkConfigRemoteNodeNetworks({
    this.cidrs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrsValue = cidrs;
    if (cidrsValue != null) {
      map['cidrs'] = cidrsValue;
    }
    return map;
  }

  factory ClusterRemoteNetworkConfigRemoteNodeNetworks.fromMap(
      Map<String, dynamic> map) {
    return ClusterRemoteNetworkConfigRemoteNodeNetworks(
      cidrs:
          map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
    );
  }
}
