// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_vpn_tunnel_args_doc}
/// The set of arguments for VpnTunnel.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_vpn_tunnel_args_doc}
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

  /// Creates a new [VpnTunnelArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ikeVersion] IKE protocol version to use when establishing the VPN tunnel with the peer VPN gateway. Acceptable IKE versions are 1 or 2. The default version is 2.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [localTrafficSelector] Local traffic selector to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges must be disjoint. Only IPv4 is supported.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [peerExternalGateway] URL of the peer side external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field is exclusive with the field peerGcpGateway.
  /// [peerExternalGatewayInterface] The interface ID of the external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. Possible values are: `0`, `1`, `2`, `3`. The number of IDs in use depends on the external VPN gateway redundancy type.
  /// [peerGcpGateway] URL of the peer side HA VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field can be used when creating highly available VPN from VPC network to VPC network, the field is exclusive with the field peerExternalGateway. If provided, the VPN tunnel will automatically use the same vpnGatewayInterface ID in the peer Google Cloud VPN gateway.
  /// [peerIp] IP address of the peer VPN gateway. Only IPv4 is supported.
  /// [project] Optional.
  /// [region] Required.
  /// [remoteTrafficSelector] Remote traffic selectors to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [router] URL of the router resource to be used for dynamic routing.
  /// [sharedSecret] Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.
  /// [sharedSecretHash] Hash of the shared secret.
  /// [targetVpnGateway] URL of the Target VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created.
  /// [vpnGateway] URL of the VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created. This must be used (instead of target_vpn_gateway) if a High Availability VPN gateway resource is created.
  /// [vpnGatewayInterface] The interface ID of the VPN gateway with which this VPN tunnel is associated. Possible values are: `0`, `1`.
  VpnTunnelArgs({
    String? description,
    int? ikeVersion,
    Map<String, String>? labels,
    List<String>? localTrafficSelector,
    String? name,
    String? peerExternalGateway,
    int? peerExternalGatewayInterface,
    String? peerGcpGateway,
    String? peerIp,
    String? project,
    required String region,
    List<String>? remoteTrafficSelector,
    String? requestId,
    String? router,
    String? sharedSecret,
    String? sharedSecretHash,
    String? targetVpnGateway,
    String? vpnGateway,
    int? vpnGatewayInterface,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ikeVersion = pulumi.Input.asOptionalInput<int>(ikeVersion),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      localTrafficSelector = pulumi.Input.asOptionalInput<List<String>>(localTrafficSelector),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerExternalGateway = pulumi.Input.asOptionalInput<String>(peerExternalGateway),
      peerExternalGatewayInterface = pulumi.Input.asOptionalInput<int>(peerExternalGatewayInterface),
      peerGcpGateway = pulumi.Input.asOptionalInput<String>(peerGcpGateway),
      peerIp = pulumi.Input.asOptionalInput<String>(peerIp),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      remoteTrafficSelector = pulumi.Input.asOptionalInput<List<String>>(remoteTrafficSelector),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      router = pulumi.Input.asOptionalInput<String>(router),
      sharedSecret = pulumi.Input.asOptionalInput<String>(sharedSecret),
      sharedSecretHash = pulumi.Input.asOptionalInput<String>(sharedSecretHash),
      targetVpnGateway = pulumi.Input.asOptionalInput<String>(targetVpnGateway),
      vpnGateway = pulumi.Input.asOptionalInput<String>(vpnGateway),
      vpnGatewayInterface = pulumi.Input.asOptionalInput<int>(vpnGatewayInterface);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ikeVersion': ?ikeVersion,
      'labels': ?labels,
      'localTrafficSelector': ?localTrafficSelector,
      'name': ?name,
      'peerExternalGateway': ?peerExternalGateway,
      'peerExternalGatewayInterface': ?peerExternalGatewayInterface,
      'peerGcpGateway': ?peerGcpGateway,
      'peerIp': ?peerIp,
      'project': ?project,
      'region': region,
      'remoteTrafficSelector': ?remoteTrafficSelector,
      'requestId': ?requestId,
      'router': ?router,
      'sharedSecret': ?sharedSecret,
      'sharedSecretHash': ?sharedSecretHash,
      'targetVpnGateway': ?targetVpnGateway,
      'vpnGateway': ?vpnGateway,
      'vpnGatewayInterface': ?vpnGatewayInterface,
    };
  }

  factory VpnTunnelArgs.fromMap(Map<String, dynamic> map) {
    return VpnTunnelArgs(
      description: map['description'] == null ? null : map['description'] as String,
      ikeVersion: map['ikeVersion'] == null ? null : map['ikeVersion'] as int,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      localTrafficSelector: map['localTrafficSelector'] == null ? null : (map['localTrafficSelector'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      peerExternalGateway: map['peerExternalGateway'] == null ? null : map['peerExternalGateway'] as String,
      peerExternalGatewayInterface: map['peerExternalGatewayInterface'] == null ? null : map['peerExternalGatewayInterface'] as int,
      peerGcpGateway: map['peerGcpGateway'] == null ? null : map['peerGcpGateway'] as String,
      peerIp: map['peerIp'] == null ? null : map['peerIp'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      remoteTrafficSelector: map['remoteTrafficSelector'] == null ? null : (map['remoteTrafficSelector'] as List).cast<String>(),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      router: map['router'] == null ? null : map['router'] as String,
      sharedSecret: map['sharedSecret'] == null ? null : map['sharedSecret'] as String,
      sharedSecretHash: map['sharedSecretHash'] == null ? null : map['sharedSecretHash'] as String,
      targetVpnGateway: map['targetVpnGateway'] == null ? null : map['targetVpnGateway'] as String,
      vpnGateway: map['vpnGateway'] == null ? null : map['vpnGateway'] as String,
      vpnGatewayInterface: map['vpnGatewayInterface'] == null ? null : map['vpnGatewayInterface'] as int,
    );
  }
}

