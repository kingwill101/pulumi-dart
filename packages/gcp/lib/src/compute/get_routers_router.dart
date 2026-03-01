// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routers_router_bgp.dart';
import 'get_routers_router_bgp_peer.dart';
import 'get_routers_router_interface.dart';
import 'get_routers_router_md5_authentication_key.dart';
import 'get_routers_router_nat.dart';

class GetRoutersRouter {
  final List<GetRoutersRouterBgpPeer> bgpPeers;
  final List<GetRoutersRouterBgp> bgps;
  final String creationTimestamp;
  final String description;
  final bool encryptedInterconnectRouter;
  final List<GetRoutersRouterInterface> interfaces;
  final List<GetRoutersRouterMd5AuthenticationKey> md5AuthenticationKeys;
  final String name;
  final List<GetRoutersRouterNat> nats;
  final String network;
  final String selfLink;

  /// Creates a new [GetRoutersRouter].
  /// [bgpPeers] Required.
  /// [bgps] Required.
  /// [creationTimestamp] Required.
  /// [description] Required.
  /// [encryptedInterconnectRouter] Required.
  /// [interfaces] Required.
  /// [md5AuthenticationKeys] Required.
  /// [name] Required.
  /// [nats] Required.
  /// [network] Required.
  /// [selfLink] Required.
  GetRoutersRouter({
    required this.bgpPeers,
    required this.bgps,
    required this.creationTimestamp,
    required this.description,
    required this.encryptedInterconnectRouter,
    required this.interfaces,
    required this.md5AuthenticationKeys,
    required this.name,
    required this.nats,
    required this.network,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpPeers': pulumi.Input.encodeList<GetRoutersRouterBgpPeer, Map<String, dynamic>>(bgpPeers, (value) => value.toMap()),
      'bgps': pulumi.Input.encodeList<GetRoutersRouterBgp, Map<String, dynamic>>(bgps, (value) => value.toMap()),
      'creationTimestamp': creationTimestamp,
      'description': description,
      'encryptedInterconnectRouter': encryptedInterconnectRouter,
      'interfaces': pulumi.Input.encodeList<GetRoutersRouterInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'md5AuthenticationKeys': pulumi.Input.encodeList<GetRoutersRouterMd5AuthenticationKey, Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap()),
      'name': name,
      'nats': pulumi.Input.encodeList<GetRoutersRouterNat, Map<String, dynamic>>(nats, (value) => value.toMap()),
      'network': network,
      'selfLink': selfLink,
    };
  }

  factory GetRoutersRouter.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouter(
      bgpPeers: pulumi.Input.decodeList<GetRoutersRouterBgpPeer>(map['bgpPeers'], (value) => GetRoutersRouterBgpPeer.fromMap((value as Map).cast<String, dynamic>())),
      bgps: pulumi.Input.decodeList<GetRoutersRouterBgp>(map['bgps'], (value) => GetRoutersRouterBgp.fromMap((value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] as bool,
      interfaces: pulumi.Input.decodeList<GetRoutersRouterInterface>(map['interfaces'], (value) => GetRoutersRouterInterface.fromMap((value as Map).cast<String, dynamic>())),
      md5AuthenticationKeys: pulumi.Input.decodeList<GetRoutersRouterMd5AuthenticationKey>(map['md5AuthenticationKeys'], (value) => GetRoutersRouterMd5AuthenticationKey.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nats: pulumi.Input.decodeList<GetRoutersRouterNat>(map['nats'], (value) => GetRoutersRouterNat.fromMap((value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}

