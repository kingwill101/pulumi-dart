// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'router_bgp2.dart';
import 'router_bgp_peer2.dart';
import 'router_interface2.dart';
import 'router_md5_authentication_key2.dart';
import 'router_nat2.dart';

/// The set of arguments for Router.
class RouterArgs2 {
  /// BGP information specific to this router.
  final Input<RouterBgp2>? bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final Input<List<RouterBgpPeer2>>? bgpPeers;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final Input<bool>? encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final Input<List<RouterInterface2>>? interfaces;

  /// Keys used for MD5 authentication.
  final Input<List<RouterMd5AuthenticationKey2>>? md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// A list of NAT services created in this router.
  final Input<List<RouterNat2>>? nats;

  /// URI of the network to which this router belongs.
  final Input<String>? network;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  RouterArgs2({
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
      map['bgp'] =
          Input.mapOptionalInputValue<RouterBgp2, Map<String, dynamic>>(
              bgpValue, (value) => value.toMap());
    }
    final bgpPeersValue = bgpPeers;
    if (bgpPeersValue != null) {
      map['bgpPeers'] = Input.mapOptionalInputValue<List<RouterBgpPeer2>,
              List<Map<String, dynamic>>>(
          bgpPeersValue,
          (value) => Input.encodeList<RouterBgpPeer2, Map<String, dynamic>>(
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
      map['interfaces'] = Input.mapOptionalInputValue<List<RouterInterface2>,
              List<Map<String, dynamic>>>(
          interfacesValue,
          (value) => Input.encodeList<RouterInterface2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final md5AuthenticationKeysValue = md5AuthenticationKeys;
    if (md5AuthenticationKeysValue != null) {
      map['md5AuthenticationKeys'] = Input.mapOptionalInputValue<
              List<RouterMd5AuthenticationKey2>, List<Map<String, dynamic>>>(
          md5AuthenticationKeysValue,
          (value) => Input.encodeList<RouterMd5AuthenticationKey2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natsValue = nats;
    if (natsValue != null) {
      map['nats'] = Input.mapOptionalInputValue<List<RouterNat2>,
              List<Map<String, dynamic>>>(
          natsValue,
          (value) => Input.encodeList<RouterNat2, Map<String, dynamic>>(
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

  factory RouterArgs2.fromMap(Map<String, dynamic> map) {
    return RouterArgs2(
      bgp: Input.asOptionalInput<RouterBgp2>(map['bgp']),
      bgpPeers: Input.asOptionalInput<List<RouterBgpPeer2>>(map['bgpPeers']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptedInterconnectRouter:
          Input.asOptionalInput<bool>(map['encryptedInterconnectRouter']),
      interfaces:
          Input.asOptionalInput<List<RouterInterface2>>(map['interfaces']),
      md5AuthenticationKeys:
          Input.asOptionalInput<List<RouterMd5AuthenticationKey2>>(
              map['md5AuthenticationKeys']),
      name: Input.asOptionalInput<String>(map['name']),
      nats: Input.asOptionalInput<List<RouterNat2>>(map['nats']),
      network: Input.asOptionalInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
