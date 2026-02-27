// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_router_bgp/get_router_bgp.dart';
import '../get_router_md5_authentication_key/get_router_md5_authentication_key.dart';
import '../get_router_param/get_router_param.dart';

/// Result data returned by getRouter.
class GetRouterResult {
  final List<GetRouterBgp> bgps;
  final String creationTimestamp;
  final String description;
  final bool encryptedInterconnectRouter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetRouterMd5AuthenticationKey> md5AuthenticationKeys;
  final String name;
  final String nccGateway;
  final String network;
  final List<GetRouterParam> params;
  final String? project;
  final String? region;
  final String selfLink;

  GetRouterResult({
    required this.bgps,
    required this.creationTimestamp,
    required this.description,
    required this.encryptedInterconnectRouter,
    required this.id,
    required this.md5AuthenticationKeys,
    required this.name,
    required this.nccGateway,
    required this.network,
    required this.params,
    this.project,
    this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bgps'] = pulumi.Input.encodeList<GetRouterBgp, Map<String, dynamic>>(
        bgps, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['encryptedInterconnectRouter'] = encryptedInterconnectRouter;
    map['id'] = id;
    map['md5AuthenticationKeys'] = pulumi.Input.encodeList<
        GetRouterMd5AuthenticationKey,
        Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap());
    map['name'] = name;
    map['nccGateway'] = nccGateway;
    map['network'] = network;
    map['params'] =
        pulumi.Input.encodeList<GetRouterParam, Map<String, dynamic>>(
            params, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetRouterResult.fromMap(Map<String, dynamic> map) {
    return GetRouterResult(
      bgps: pulumi.Input.decodeList<GetRouterBgp>(
          map['bgps'],
          (value) =>
              GetRouterBgp.fromMap((value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] as bool,
      id: map['id'] as String,
      md5AuthenticationKeys:
          pulumi.Input.decodeList<GetRouterMd5AuthenticationKey>(
              map['md5AuthenticationKeys'],
              (value) => GetRouterMd5AuthenticationKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nccGateway: map['nccGateway'] as String,
      network: map['network'] as String,
      params: pulumi.Input.decodeList<GetRouterParam>(
          map['params'],
          (value) =>
              GetRouterParam.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
