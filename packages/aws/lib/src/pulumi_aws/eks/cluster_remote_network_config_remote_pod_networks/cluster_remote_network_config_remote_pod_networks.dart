// ignore_for_file: unused_element, unnecessary_cast

class ClusterRemoteNetworkConfigRemotePodNetworks {
  /// List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  final List<String>? cidrs;

  ClusterRemoteNetworkConfigRemotePodNetworks({
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

  factory ClusterRemoteNetworkConfigRemotePodNetworks.fromMap(
      Map<String, dynamic> map) {
    return ClusterRemoteNetworkConfigRemotePodNetworks(
      cidrs:
          map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
    );
  }
}
