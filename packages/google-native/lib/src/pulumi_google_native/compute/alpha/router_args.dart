// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'router_bgp.dart';
import 'router_bgp_peer.dart';
import 'router_interface.dart';
import 'router_md5_authentication_key.dart';
import 'router_nat.dart';

/// The set of arguments for Router.
class RouterArgs {
  /// BGP information specific to this router.
  final Input<RouterBgp>? bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final Input<List<RouterBgpPeer>>? bgpPeers;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final Input<bool>? encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final Input<List<RouterInterface>>? interfaces;

  /// Keys used for MD5 authentication.
  final Input<List<RouterMd5AuthenticationKey>>? md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// A list of NAT services created in this router.
  final Input<List<RouterNat>>? nats;

  /// URI of the network to which this router belongs.
  final Input<String>? network;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  RouterArgs({
    this.bgp,
    this.bgpPeers,
    this.description,
    this.encryptedInterconnectRouter,
    this.interfaces,
    this.md5AuthenticationKeys,
    this.name,
    this.nats,
    this.network,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpValue = bgp;
    if (bgpValue != null) {
      map['bgp'] = Input.mapOptionalInputValue<RouterBgp, Map<String, dynamic>>(
          bgpValue, (value) => value.toMap());
    }
    final bgpPeersValue = bgpPeers;
    if (bgpPeersValue != null) {
      map['bgpPeers'] = Input.mapOptionalInputValue<List<RouterBgpPeer>,
              List<Map<String, dynamic>>>(
          bgpPeersValue,
          (value) => Input.encodeList<RouterBgpPeer, Map<String, dynamic>>(
              value, (value) => value.toMap()));
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
      map['interfaces'] = Input.mapOptionalInputValue<List<RouterInterface>,
              List<Map<String, dynamic>>>(
          interfacesValue,
          (value) => Input.encodeList<RouterInterface, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final md5AuthenticationKeysValue = md5AuthenticationKeys;
    if (md5AuthenticationKeysValue != null) {
      map['md5AuthenticationKeys'] = Input.mapOptionalInputValue<
              List<RouterMd5AuthenticationKey>, List<Map<String, dynamic>>>(
          md5AuthenticationKeysValue,
          (value) => Input.encodeList<RouterMd5AuthenticationKey,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natsValue = nats;
    if (natsValue != null) {
      map['nats'] = Input.mapOptionalInputValue<List<RouterNat>,
              List<Map<String, dynamic>>>(
          natsValue,
          (value) => Input.encodeList<RouterNat, Map<String, dynamic>>(
              value, (value) => value.toMap()));
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

  factory RouterArgs.fromMap(Map<String, dynamic> map) {
    return RouterArgs(
      bgp: Input.asOptionalInput<RouterBgp>(map['bgp']),
      bgpPeers: Input.asOptionalInput<List<RouterBgpPeer>>(map['bgpPeers']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptedInterconnectRouter:
          Input.asOptionalInput<bool>(map['encryptedInterconnectRouter']),
      interfaces:
          Input.asOptionalInput<List<RouterInterface>>(map['interfaces']),
      md5AuthenticationKeys:
          Input.asOptionalInput<List<RouterMd5AuthenticationKey>>(
              map['md5AuthenticationKeys']),
      name: Input.asOptionalInput<String>(map['name']),
      nats: Input.asOptionalInput<List<RouterNat>>(map['nats']),
      network: Input.asOptionalInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
