// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_express_connect_router_region.dart';

/// {@template pulumi_expressconnect_router_express_connect_router_router_express_connect_router_args_doc}
/// The set of arguments for RouterExpressConnectRouter.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_router_express_connect_router_router_express_connect_router_args_doc}
class RouterExpressConnectRouterArgs {
  /// ASN representing resources.
  final pulumi.Input<int> alibabaSideAsn;
  /// Represents the description of the leased line gateway.
  final pulumi.Input<String>? description;
  /// Name of the Gateway representing the leased line.
  final pulumi.Input<String>? ecrName;
  /// List of regions representing leased line gateways. See `regions` below.
  final pulumi.Input<List<RouterExpressConnectRouterRegion>>? regions;
  /// The ID of the resource group to which the ECR instance belongs.
  /// - A string consisting of letters, numbers, hyphens (-), and underscores (_), and the string length can be 0 to 64 characters.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouterExpressConnectRouterArgs].
  /// [alibabaSideAsn] ASN representing resources.
  /// [description] Represents the description of the leased line gateway.
  /// [ecrName] Name of the Gateway representing the leased line.
  /// [regions] List of regions representing leased line gateways. See `regions` below.
  /// [resourceGroupId] The ID of the resource group to which the ECR instance belongs.
  /// [tags] The tag of the resource.
  const RouterExpressConnectRouterArgs({
    required this.alibabaSideAsn,
    this.description,
    this.ecrName,
    this.regions,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alibabaSideAsn': alibabaSideAsn,
      'description': ?description,
      'ecrName': ?ecrName,
      'regions': ?pulumi.Input.mapOptionalInputValue<List<RouterExpressConnectRouterRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<RouterExpressConnectRouterRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory RouterExpressConnectRouterArgs.fromMap(Map<String, dynamic> map) {
    return RouterExpressConnectRouterArgs(
      alibabaSideAsn: pulumi.Input.fromValue(map['alibabaSideAsn'] as int),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecrName: (() { final guardedValue = map['ecrName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterExpressConnectRouterRegion>(guardedValue, (value) => RouterExpressConnectRouterRegion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

