// ignore_for_file: unused_element, unnecessary_cast

class GetClusterRemoteNetworkConfigRemoteNodeNetwork {
  /// List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  final List<String> cidrs;

  GetClusterRemoteNetworkConfigRemoteNodeNetwork({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrs'] = cidrs;
    return map;
  }

  factory GetClusterRemoteNetworkConfigRemoteNodeNetwork.fromMap(
      Map<String, dynamic> map) {
    return GetClusterRemoteNetworkConfigRemoteNodeNetwork(
      cidrs: (map['cidrs'] as List).cast<String>(),
    );
  }
}
