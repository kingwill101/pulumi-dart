// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_cidrs_cidr.dart';

/// Result data returned by getTransitRouterCidrs.
class GetTransitRouterCidrsResult {
  final List<GetTransitRouterCidrsCidr> cidrs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? transitRouterCidrId;
  final String transitRouterId;

  /// Creates a new [GetTransitRouterCidrsResult].
  /// [cidrs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [transitRouterCidrId] Optional.
  /// [transitRouterId] Required.
  GetTransitRouterCidrsResult({
    required this.cidrs,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.transitRouterCidrId,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': pulumi.Input.encodeList<GetTransitRouterCidrsCidr, Map<String, dynamic>>(cidrs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'transitRouterCidrId': ?transitRouterCidrId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTransitRouterCidrsResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterCidrsResult(
      cidrs: pulumi.Input.decodeList<GetTransitRouterCidrsCidr>(map['cidrs']!, (value) => GetTransitRouterCidrsCidr.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterCidrId: (() { final guardedValue = map['transitRouterCidrId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

