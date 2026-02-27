// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine VPN gateway.
class VpnGatewayInfoResponseNetworkmanagementV1beta1 {
  /// Name of a VPN gateway.
  final String displayName;

  /// IP address of the VPN gateway.
  final String ipAddress;

  /// URI of a Compute Engine network where the VPN gateway is configured.
  final String networkUri;

  /// Name of a Google Cloud region where this VPN gateway is configured.
  final String region;

  /// URI of a VPN gateway.
  final String uri;

  /// A VPN tunnel that is associated with this VPN gateway. There may be multiple VPN tunnels configured on a VPN gateway, and only the one relevant to the test is displayed.
  final String vpnTunnelUri;

  VpnGatewayInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.ipAddress,
    required this.networkUri,
    required this.region,
    required this.uri,
    required this.vpnTunnelUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['ipAddress'] = ipAddress;
    map['networkUri'] = networkUri;
    map['region'] = region;
    map['uri'] = uri;
    map['vpnTunnelUri'] = vpnTunnelUri;
    return map;
  }

  factory VpnGatewayInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return VpnGatewayInfoResponseNetworkmanagementV1beta1(
      displayName: map['displayName'] as String,
      ipAddress: map['ipAddress'] as String,
      networkUri: map['networkUri'] as String,
      region: map['region'] as String,
      uri: map['uri'] as String,
      vpnTunnelUri: map['vpnTunnelUri'] as String,
    );
  }
}
