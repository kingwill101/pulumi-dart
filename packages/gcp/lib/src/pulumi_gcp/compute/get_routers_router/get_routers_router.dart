// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_routers_router_bgp/get_routers_router_bgp.dart';
import '../get_routers_router_bgp_peer/get_routers_router_bgp_peer.dart';
import '../get_routers_router_interface/get_routers_router_interface.dart';
import '../get_routers_router_md5_authentication_key/get_routers_router_md5_authentication_key.dart';
import '../get_routers_router_nat/get_routers_router_nat.dart';

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
    final map = <String, dynamic>{};
    map['bgpPeers'] =
        Input.encodeList<GetRoutersRouterBgpPeer, Map<String, dynamic>>(
            bgpPeers, (value) => value.toMap());
    map['bgps'] = Input.encodeList<GetRoutersRouterBgp, Map<String, dynamic>>(
        bgps, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['encryptedInterconnectRouter'] = encryptedInterconnectRouter;
    map['interfaces'] =
        Input.encodeList<GetRoutersRouterInterface, Map<String, dynamic>>(
            interfaces, (value) => value.toMap());
    map['md5AuthenticationKeys'] = Input.encodeList<
        GetRoutersRouterMd5AuthenticationKey,
        Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap());
    map['name'] = name;
    map['nats'] = Input.encodeList<GetRoutersRouterNat, Map<String, dynamic>>(
        nats, (value) => value.toMap());
    map['network'] = network;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetRoutersRouter.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouter(
      bgpPeers: Input.decodeList<GetRoutersRouterBgpPeer>(
          map['bgpPeers'],
          (value) => GetRoutersRouterBgpPeer.fromMap(
              (value as Map).cast<String, dynamic>())),
      bgps: Input.decodeList<GetRoutersRouterBgp>(
          map['bgps'],
          (value) => GetRoutersRouterBgp.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] as bool,
      interfaces: Input.decodeList<GetRoutersRouterInterface>(
          map['interfaces'],
          (value) => GetRoutersRouterInterface.fromMap(
              (value as Map).cast<String, dynamic>())),
      md5AuthenticationKeys:
          Input.decodeList<GetRoutersRouterMd5AuthenticationKey>(
              map['md5AuthenticationKeys'],
              (value) => GetRoutersRouterMd5AuthenticationKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nats: Input.decodeList<GetRoutersRouterNat>(
          map['nats'],
          (value) => GetRoutersRouterNat.fromMap(
              (value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
