// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_compute_beta.dart';
import 'router_bgp_peer_compute_beta.dart';
import 'router_interface_compute_beta.dart';
import 'router_md5_authentication_key_compute_beta.dart';
import 'router_nat_compute_beta.dart';

/// {@template pulumi_compute_beta_router_compute_beta_args_doc}
/// The set of arguments for Router.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_router_compute_beta_args_doc}
class RouterComputeBetaArgs {
  /// BGP information specific to this router.
  final pulumi.Input<RouterBgpComputeBeta>? bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final pulumi.Input<List<RouterBgpPeerComputeBeta>>? bgpPeers;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final pulumi.Input<bool>? encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final pulumi.Input<List<RouterInterfaceComputeBeta>>? interfaces;

  /// Keys used for MD5 authentication.
  final pulumi.Input<List<RouterMd5AuthenticationKeyComputeBeta>>?
      md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// A list of NAT services created in this router.
  final pulumi.Input<List<RouterNatComputeBeta>>? nats;

  /// URI of the network to which this router belongs.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [RouterComputeBetaArgs].
  /// [bgp] BGP information specific to this router.
  /// [bgpPeers] BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [encryptedInterconnectRouter] Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  /// [interfaces] Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  /// [md5AuthenticationKeys] Keys used for MD5 authentication.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nats] A list of NAT services created in this router.
  /// [network] URI of the network to which this router belongs.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  RouterComputeBetaArgs({
    RouterBgpComputeBeta? bgp,
    List<RouterBgpPeerComputeBeta>? bgpPeers,
    String? description,
    bool? encryptedInterconnectRouter,
    List<RouterInterfaceComputeBeta>? interfaces,
    List<RouterMd5AuthenticationKeyComputeBeta>? md5AuthenticationKeys,
    String? name,
    List<RouterNatComputeBeta>? nats,
    String? network,
    String? project,
    required String region,
    String? requestId,
  })  : bgp = pulumi.Input.asOptionalInput<RouterBgpComputeBeta>(bgp),
        bgpPeers = pulumi.Input.asOptionalInput<List<RouterBgpPeerComputeBeta>>(
            bgpPeers),
        description = pulumi.Input.asOptionalInput<String>(description),
        encryptedInterconnectRouter =
            pulumi.Input.asOptionalInput<bool>(encryptedInterconnectRouter),
        interfaces =
            pulumi.Input.asOptionalInput<List<RouterInterfaceComputeBeta>>(
                interfaces),
        md5AuthenticationKeys = pulumi.Input.asOptionalInput<
            List<RouterMd5AuthenticationKeyComputeBeta>>(md5AuthenticationKeys),
        name = pulumi.Input.asOptionalInput<String>(name),
        nats = pulumi.Input.asOptionalInput<List<RouterNatComputeBeta>>(nats),
        network = pulumi.Input.asOptionalInput<String>(network),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpValue = bgp;
    if (bgpValue != null) {
      map['bgp'] = pulumi.Input.mapOptionalInputValue<RouterBgpComputeBeta,
          Map<String, dynamic>>(bgpValue, (value) => value.toMap());
    }
    final bgpPeersValue = bgpPeers;
    if (bgpPeersValue != null) {
      map['bgpPeers'] = pulumi.Input.mapOptionalInputValue<
              List<RouterBgpPeerComputeBeta>, List<Map<String, dynamic>>>(
          bgpPeersValue,
          (value) => pulumi.Input.encodeList<RouterBgpPeerComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptedInterconnectRouterValue = encryptedInterconnectRouter;
    if (encryptedInterconnectRouterValue != null) {
      map['encryptedInterconnectRouter'] = encryptedInterconnectRouterValue;
    }
    final interfacesValue = interfaces;
    if (interfacesValue != null) {
      map['interfaces'] = pulumi.Input.mapOptionalInputValue<
              List<RouterInterfaceComputeBeta>, List<Map<String, dynamic>>>(
          interfacesValue,
          (value) => pulumi.Input.encodeList<RouterInterfaceComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final md5AuthenticationKeysValue = md5AuthenticationKeys;
    if (md5AuthenticationKeysValue != null) {
      map['md5AuthenticationKeys'] = pulumi.Input.mapOptionalInputValue<
              List<RouterMd5AuthenticationKeyComputeBeta>,
              List<Map<String, dynamic>>>(
          md5AuthenticationKeysValue,
          (value) => pulumi.Input.encodeList<
              RouterMd5AuthenticationKeyComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natsValue = nats;
    if (natsValue != null) {
      map['nats'] = pulumi.Input.mapOptionalInputValue<
              List<RouterNatComputeBeta>, List<Map<String, dynamic>>>(
          natsValue,
          (value) => pulumi.Input.encodeList<RouterNatComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory RouterComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RouterComputeBetaArgs(
      bgp: map['bgp'] == null
          ? null
          : RouterBgpComputeBeta.fromMap(
              (map['bgp'] as Map).cast<String, dynamic>()),
      bgpPeers: map['bgpPeers'] == null
          ? null
          : pulumi.Input.decodeList<RouterBgpPeerComputeBeta>(
              map['bgpPeers'],
              (value) => RouterBgpPeerComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] == null
          ? null
          : map['encryptedInterconnectRouter'] as bool,
      interfaces: map['interfaces'] == null
          ? null
          : pulumi.Input.decodeList<RouterInterfaceComputeBeta>(
              map['interfaces'],
              (value) => RouterInterfaceComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      md5AuthenticationKeys: map['md5AuthenticationKeys'] == null
          ? null
          : pulumi.Input.decodeList<RouterMd5AuthenticationKeyComputeBeta>(
              map['md5AuthenticationKeys'],
              (value) => RouterMd5AuthenticationKeyComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      nats: map['nats'] == null
          ? null
          : pulumi.Input.decodeList<RouterNatComputeBeta>(
              map['nats'],
              (value) => RouterNatComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
