// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalBgpPeerConfig represents configuration parameters for a Border Gateway Protocol (BGP) peer.
class BareMetalBgpPeerConfig {
  /// BGP autonomous system number (ASN) for the network that contains the external peer device.
  final String asn;

  /// The IP address of the control plane node that connects to the external peer. If you don't specify any control plane nodes, all control plane nodes can connect to the external peer. If you specify one or more IP addresses, only the nodes specified participate in peering sessions.
  final List<String>? controlPlaneNodes;

  /// The IP address of the external peer device.
  final String ipAddress;

  BareMetalBgpPeerConfig({
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

  factory BareMetalBgpPeerConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalBgpPeerConfig(
      asn: map['asn'] as String,
      controlPlaneNodes: map['controlPlaneNodes'] == null
          ? null
          : (map['controlPlaneNodes'] as List).cast<String>(),
      ipAddress: map['ipAddress'] as String,
    );
  }
}
