// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig {
  /// (Optional)
  final int? asn;

  /// The IP address of the control plane node that
  /// connects to the external peer.
  final List<String>? controlPlaneNodes;

  /// (Optional)
  final String? ipAddress;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig].
  /// [asn] (Optional)
  /// [controlPlaneNodes] The IP address of the control plane node that
  /// [ipAddress] (Optional)
  BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig({
    this.asn,
    this.controlPlaneNodes,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final controlPlaneNodesValue = controlPlaneNodes;
    if (controlPlaneNodesValue != null) {
      map['controlPlaneNodes'] = controlPlaneNodesValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig(
      asn: map['asn'] == null ? null : map['asn'] as int,
      controlPlaneNodes: map['controlPlaneNodes'] == null
          ? null
          : (map['controlPlaneNodes'] as List).cast<String>(),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}
