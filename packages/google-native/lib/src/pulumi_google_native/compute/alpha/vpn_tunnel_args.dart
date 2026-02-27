// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpnTunnel.
class VpnTunnelArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// IKE protocol version to use when establishing the VPN tunnel with the peer VPN gateway. Acceptable IKE versions are 1 or 2. The default version is 2.
  final pulumi.Input<int>? ikeVersion;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Local traffic selector to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges must be disjoint. Only IPv4 is supported.
  final pulumi.Input<List<String>>? localTrafficSelector;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field is exclusive with the field peerGcpGateway.
  final pulumi.Input<String>? peerExternalGateway;

  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. Possible values are: `0`, `1`, `2`, `3`. The number of IDs in use depends on the external VPN gateway redundancy type.
  final pulumi.Input<int>? peerExternalGatewayInterface;

  /// URL of the peer side HA VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field can be used when creating highly available VPN from VPC network to VPC network, the field is exclusive with the field peerExternalGateway. If provided, the VPN tunnel will automatically use the same vpnGatewayInterface ID in the peer Google Cloud VPN gateway.
  final pulumi.Input<String>? peerGcpGateway;

  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  final pulumi.Input<String>? peerIp;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Remote traffic selectors to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported.
  final pulumi.Input<List<String>>? remoteTrafficSelector;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// URL of the router resource to be used for dynamic routing.
  final pulumi.Input<String>? router;

  /// Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.
  final pulumi.Input<String>? sharedSecret;

  /// Hash of the shared secret.
  final pulumi.Input<String>? sharedSecretHash;

  /// URL of the Target VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created.
  final pulumi.Input<String>? targetVpnGateway;

  /// URL of the VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created. This must be used (instead of target_vpn_gateway) if a High Availability VPN gateway resource is created.
  final pulumi.Input<String>? vpnGateway;

  /// The interface ID of the VPN gateway with which this VPN tunnel is associated. Possible values are: `0`, `1`.
  final pulumi.Input<int>? vpnGatewayInterface;

  VpnTunnelArgs({
    this.description,
    this.ikeVersion,
    this.labels,
    this.localTrafficSelector,
    this.name,
    this.peerExternalGateway,
    this.peerExternalGatewayInterface,
    this.peerGcpGateway,
    this.peerIp,
    this.project,
    required this.region,
    this.remoteTrafficSelector,
    this.requestId,
    this.router,
    this.sharedSecret,
    this.sharedSecretHash,
    this.targetVpnGateway,
    this.vpnGateway,
    this.vpnGatewayInterface,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ikeVersionValue = ikeVersion;
    if (ikeVersionValue != null) {
      map['ikeVersion'] = ikeVersionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final localTrafficSelectorValue = localTrafficSelector;
    if (localTrafficSelectorValue != null) {
      map['localTrafficSelector'] = localTrafficSelectorValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final peerExternalGatewayValue = peerExternalGateway;
    if (peerExternalGatewayValue != null) {
      map['peerExternalGateway'] = peerExternalGatewayValue;
    }
    final peerExternalGatewayInterfaceValue = peerExternalGatewayInterface;
    if (peerExternalGatewayInterfaceValue != null) {
      map['peerExternalGatewayInterface'] = peerExternalGatewayInterfaceValue;
    }
    final peerGcpGatewayValue = peerGcpGateway;
    if (peerGcpGatewayValue != null) {
      map['peerGcpGateway'] = peerGcpGatewayValue;
    }
    final peerIpValue = peerIp;
    if (peerIpValue != null) {
      map['peerIp'] = peerIpValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final remoteTrafficSelectorValue = remoteTrafficSelector;
    if (remoteTrafficSelectorValue != null) {
      map['remoteTrafficSelector'] = remoteTrafficSelectorValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final routerValue = router;
    if (routerValue != null) {
      map['router'] = routerValue;
    }
    final sharedSecretValue = sharedSecret;
    if (sharedSecretValue != null) {
      map['sharedSecret'] = sharedSecretValue;
    }
    final sharedSecretHashValue = sharedSecretHash;
    if (sharedSecretHashValue != null) {
      map['sharedSecretHash'] = sharedSecretHashValue;
    }
    final targetVpnGatewayValue = targetVpnGateway;
    if (targetVpnGatewayValue != null) {
      map['targetVpnGateway'] = targetVpnGatewayValue;
    }
    final vpnGatewayValue = vpnGateway;
    if (vpnGatewayValue != null) {
      map['vpnGateway'] = vpnGatewayValue;
    }
    final vpnGatewayInterfaceValue = vpnGatewayInterface;
    if (vpnGatewayInterfaceValue != null) {
      map['vpnGatewayInterface'] = vpnGatewayInterfaceValue;
    }
    return map;
  }

  factory VpnTunnelArgs.fromMap(Map<String, dynamic> map) {
    return VpnTunnelArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      ikeVersion: pulumi.Input.asOptionalInput<int>(map['ikeVersion']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      localTrafficSelector: pulumi.Input.asOptionalInput<List<String>>(
          map['localTrafficSelector']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      peerExternalGateway:
          pulumi.Input.asOptionalInput<String>(map['peerExternalGateway']),
      peerExternalGatewayInterface: pulumi.Input.asOptionalInput<int>(
          map['peerExternalGatewayInterface']),
      peerGcpGateway:
          pulumi.Input.asOptionalInput<String>(map['peerGcpGateway']),
      peerIp: pulumi.Input.asOptionalInput<String>(map['peerIp']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      remoteTrafficSelector: pulumi.Input.asOptionalInput<List<String>>(
          map['remoteTrafficSelector']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      router: pulumi.Input.asOptionalInput<String>(map['router']),
      sharedSecret: pulumi.Input.asOptionalInput<String>(map['sharedSecret']),
      sharedSecretHash:
          pulumi.Input.asOptionalInput<String>(map['sharedSecretHash']),
      targetVpnGateway:
          pulumi.Input.asOptionalInput<String>(map['targetVpnGateway']),
      vpnGateway: pulumi.Input.asOptionalInput<String>(map['vpnGateway']),
      vpnGatewayInterface:
          pulumi.Input.asOptionalInput<int>(map['vpnGatewayInterface']),
    );
  }
}
