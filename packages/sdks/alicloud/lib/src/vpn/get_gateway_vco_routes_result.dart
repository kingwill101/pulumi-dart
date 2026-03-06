// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_vco_routes_route.dart';

/// Result data returned by getGatewayVcoRoutes.
class GetGatewayVcoRoutesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? routeEntryType;
  /// A list of Vpn Gateway Vco Routes. Each element contains the following attributes:
  final List<GetGatewayVcoRoutesRoute> routes;
  /// The status of the vpn route entry.
  final String? status;
  /// The id of the vpn connection.
  final String vpnConnectionId;

  /// Creates a new [GetGatewayVcoRoutesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [routeEntryType] Optional.
  /// [routes] A list of Vpn Gateway Vco Routes. Each element contains the following attributes:
  /// [status] The status of the vpn route entry.
  /// [vpnConnectionId] The id of the vpn connection.
  const GetGatewayVcoRoutesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.routeEntryType,
    required this.routes,
    this.status,
    required this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'routeEntryType': ?routeEntryType,
      'routes': pulumi.Input.encodeList<GetGatewayVcoRoutesRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'status': ?status,
      'vpnConnectionId': vpnConnectionId,
    };
  }

  factory GetGatewayVcoRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayVcoRoutesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      routeEntryType: (() { final guardedValue = map['routeEntryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: pulumi.Input.decodeList<GetGatewayVcoRoutesRoute>(map['routes']!, (value) => GetGatewayVcoRoutesRoute.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnConnectionId: map['vpnConnectionId'] as String,
    );
  }
}

