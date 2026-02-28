// ignore_for_file: unused_element, unnecessary_cast

class GetClusterRemoteNetworkConfigRemotePodNetwork {
  /// List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  final List<String> cidrs;

  /// Creates a new [GetClusterRemoteNetworkConfigRemotePodNetwork].
  /// [cidrs] List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
  GetClusterRemoteNetworkConfigRemotePodNetwork({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrs'] = cidrs;
    return map;
  }

  factory GetClusterRemoteNetworkConfigRemotePodNetwork.fromMap(
      Map<String, dynamic> map) {
    return GetClusterRemoteNetworkConfigRemotePodNetwork(
      cidrs: (map['cidrs'] as List).cast<String>(),
    );
  }
}
