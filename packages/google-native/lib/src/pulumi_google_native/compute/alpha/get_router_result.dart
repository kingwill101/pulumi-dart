// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_peer_response.dart';
import 'router_bgp_response.dart';
import 'router_interface_response.dart';
import 'router_md5_authentication_key_response.dart';
import 'router_nat_response.dart';

/// Result data returned by getRouter.
class GetRouterResult {
  /// BGP information specific to this router.
  final RouterBgpResponse bgp;

  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final List<RouterBgpPeerResponse> bgpPeers;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final bool encryptedInterconnectRouter;

  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final List<RouterInterfaceResponse> interfaces;

  /// Type of resource. Always compute#router for routers.
  final String kind;

  /// Keys used for MD5 authentication.
  final List<RouterMd5AuthenticationKeyResponse> md5AuthenticationKeys;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// A list of NAT services created in this router.
  final List<RouterNatResponse> nats;

  /// URI of the network to which this router belongs.
  final String network;

  /// URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  GetRouterResult({
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
    required this.selfLinkWithId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bgp'] = bgp.toMap();
    map['bgpPeers'] =
        pulumi.Input.encodeList<RouterBgpPeerResponse, Map<String, dynamic>>(
            bgpPeers, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['encryptedInterconnectRouter'] = encryptedInterconnectRouter;
    map['interfaces'] =
        pulumi.Input.encodeList<RouterInterfaceResponse, Map<String, dynamic>>(
            interfaces, (value) => value.toMap());
    map['kind'] = kind;
    map['md5AuthenticationKeys'] = pulumi.Input.encodeList<
        RouterMd5AuthenticationKeyResponse,
        Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap());
    map['name'] = name;
    map['nats'] =
        pulumi.Input.encodeList<RouterNatResponse, Map<String, dynamic>>(
            nats, (value) => value.toMap());
    map['network'] = network;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    return map;
  }

  factory GetRouterResult.fromMap(Map<String, dynamic> map) {
    return GetRouterResult(
      bgp: RouterBgpResponse.fromMap(
          (map['bgp'] as Map).cast<String, dynamic>()),
      bgpPeers: pulumi.Input.decodeList<RouterBgpPeerResponse>(
          map['bgpPeers'],
          (value) => RouterBgpPeerResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] as bool,
      interfaces: pulumi.Input.decodeList<RouterInterfaceResponse>(
          map['interfaces'],
          (value) => RouterInterfaceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      md5AuthenticationKeys:
          pulumi.Input.decodeList<RouterMd5AuthenticationKeyResponse>(
              map['md5AuthenticationKeys'],
              (value) => RouterMd5AuthenticationKeyResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nats: pulumi.Input.decodeList<RouterNatResponse>(
          map['nats'],
          (value) => RouterNatResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
    );
  }
}
