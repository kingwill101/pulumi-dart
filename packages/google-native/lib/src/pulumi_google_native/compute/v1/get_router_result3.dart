// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'router_bgp_peer_response3.dart';
import 'router_bgp_response3.dart';
import 'router_interface_response3.dart';
import 'router_md5_authentication_key_response3.dart';
import 'router_nat_response3.dart';

/// Result data returned by getRouter.
class GetRouterResult3 {
  /// BGP information specific to this router.
  final RouterBgpResponse3 bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final List<RouterBgpPeerResponse3> bgpPeers;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final bool encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final List<RouterInterfaceResponse3> interfaces;

  /// Type of resource. Always compute#router for routers.
  final String kind;

  /// Keys used for MD5 authentication.
  final List<RouterMd5AuthenticationKeyResponse3> md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// A list of NAT services created in this router.
  final List<RouterNatResponse3> nats;

  /// URI of the network to which this router belongs.
  final String network;

  /// URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  GetRouterResult3({
    required this.bgp,
    required this.bgpPeers,
    required this.creationTimestamp,
    required this.description,
    required this.encryptedInterconnectRouter,
    required this.interfaces,
    required this.kind,
    required this.md5AuthenticationKeys,
    required this.name,
    required this.nats,
    required this.network,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bgp'] = bgp.toMap();
    map['bgpPeers'] =
        Input.encodeList<RouterBgpPeerResponse3, Map<String, dynamic>>(
            bgpPeers, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['encryptedInterconnectRouter'] = encryptedInterconnectRouter;
    map['interfaces'] =
        Input.encodeList<RouterInterfaceResponse3, Map<String, dynamic>>(
            interfaces, (value) => value.toMap());
    map['kind'] = kind;
    map['md5AuthenticationKeys'] = Input.encodeList<
        RouterMd5AuthenticationKeyResponse3,
        Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap());
    map['name'] = name;
    map['nats'] = Input.encodeList<RouterNatResponse3, Map<String, dynamic>>(
        nats, (value) => value.toMap());
    map['network'] = network;
    map['region'] = region;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetRouterResult3.fromMap(Map<String, dynamic> map) {
    return GetRouterResult3(
      bgp: RouterBgpResponse3.fromMap(
          (map['bgp'] as Map).cast<String, dynamic>()),
      bgpPeers: Input.decodeList<RouterBgpPeerResponse3>(
          map['bgpPeers'],
          (value) => RouterBgpPeerResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] as bool,
      interfaces: Input.decodeList<RouterInterfaceResponse3>(
          map['interfaces'],
          (value) => RouterInterfaceResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      md5AuthenticationKeys:
          Input.decodeList<RouterMd5AuthenticationKeyResponse3>(
              map['md5AuthenticationKeys'],
              (value) => RouterMd5AuthenticationKeyResponse3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nats: Input.decodeList<RouterNatResponse3>(
          map['nats'],
          (value) => RouterNatResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
