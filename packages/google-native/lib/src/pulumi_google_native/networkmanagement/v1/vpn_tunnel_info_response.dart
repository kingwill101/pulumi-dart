// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine VPN tunnel.
class VpnTunnelInfoResponse {
  /// Name of a VPN tunnel.
  final String displayName;

  /// URI of a Compute Engine network where the VPN tunnel is configured.
  final String networkUri;

  /// Name of a Google Cloud region where this VPN tunnel is configured.
  final String region;

  /// URI of a VPN gateway at remote end of the tunnel.
  final String remoteGateway;

  /// Remote VPN gateway's IP address.
  final String remoteGatewayIp;

  /// Type of the routing policy.
  final String routingType;

  /// URI of the VPN gateway at local end of the tunnel.
  final String sourceGateway;

  /// Local VPN gateway's IP address.
  final String sourceGatewayIp;

  /// URI of a VPN tunnel.
  final String uri;

  VpnTunnelInfoResponse({
    required this.displayName,
    required this.networkUri,
    required this.region,
    required this.remoteGateway,
    required this.remoteGatewayIp,
    required this.routingType,
    required this.sourceGateway,
    required this.sourceGatewayIp,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['networkUri'] = networkUri;
    map['region'] = region;
    map['remoteGateway'] = remoteGateway;
    map['remoteGatewayIp'] = remoteGatewayIp;
    map['routingType'] = routingType;
    map['sourceGateway'] = sourceGateway;
    map['sourceGatewayIp'] = sourceGatewayIp;
    map['uri'] = uri;
    return map;
  }

  factory VpnTunnelInfoResponse.fromMap(Map<String, dynamic> map) {
    return VpnTunnelInfoResponse(
      displayName: map['displayName'] as String,
      networkUri: map['networkUri'] as String,
      region: map['region'] as String,
      remoteGateway: map['remoteGateway'] as String,
      remoteGatewayIp: map['remoteGatewayIp'] as String,
      routingType: map['routingType'] as String,
      sourceGateway: map['sourceGateway'] as String,
      sourceGatewayIp: map['sourceGatewayIp'] as String,
      uri: map['uri'] as String,
    );
  }
}
