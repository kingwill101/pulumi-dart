// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine VPN tunnel.
class VpnTunnelInfoResponseNetworkmanagementV1beta1 {
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

  /// Creates a new [VpnTunnelInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a VPN tunnel.
  /// [networkUri] URI of a Compute Engine network where the VPN tunnel is configured.
  /// [region] Name of a Google Cloud region where this VPN tunnel is configured.
  /// [remoteGateway] URI of a VPN gateway at remote end of the tunnel.
  /// [remoteGatewayIp] Remote VPN gateway's IP address.
  /// [routingType] Type of the routing policy.
  /// [sourceGateway] URI of the VPN gateway at local end of the tunnel.
  /// [sourceGatewayIp] Local VPN gateway's IP address.
  /// [uri] URI of a VPN tunnel.
  VpnTunnelInfoResponseNetworkmanagementV1beta1({
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
    return <String, dynamic>{
      'displayName': displayName,
      'networkUri': networkUri,
      'region': region,
      'remoteGateway': remoteGateway,
      'remoteGatewayIp': remoteGatewayIp,
      'routingType': routingType,
      'sourceGateway': sourceGateway,
      'sourceGatewayIp': sourceGatewayIp,
      'uri': uri,
    };
  }

  factory VpnTunnelInfoResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpnTunnelInfoResponseNetworkmanagementV1beta1(
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
