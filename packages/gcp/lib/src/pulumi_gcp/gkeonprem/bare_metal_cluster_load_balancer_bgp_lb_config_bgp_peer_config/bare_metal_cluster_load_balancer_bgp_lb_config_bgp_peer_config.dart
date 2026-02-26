// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig {
  /// BGP autonomous system number (ASN) for the network that contains the
  /// external peer device.
  final int asn;

  /// The IP address of the control plane node that connects to the external
  /// peer.
  /// If you don't specify any control plane nodes, all control plane nodes
  /// can connect to the external peer. If you specify one or more IP addresses,
  /// only the nodes specified participate in peering sessions.
  final List<String>? controlPlaneNodes;

  /// The IP address of the external peer device.
  final String ipAddress;

  BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig({
    required this.asn,
    this.controlPlaneNodes,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asn'] = asn;
    final controlPlaneNodesValue = controlPlaneNodes;
    if (controlPlaneNodesValue != null) {
      map['controlPlaneNodes'] = controlPlaneNodesValue;
    }
    map['ipAddress'] = ipAddress;
    return map;
  }

  factory BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig(
      asn: map['asn'] as int,
      controlPlaneNodes: map['controlPlaneNodes'] == null
          ? null
          : (map['controlPlaneNodes'] as List).cast<String>(),
      ipAddress: map['ipAddress'] as String,
    );
  }
}
