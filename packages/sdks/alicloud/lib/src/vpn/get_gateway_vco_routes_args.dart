// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_get_gateway_vco_routes_get_gateway_vco_routes_args_doc}
/// Arguments for getGatewayVcoRoutes.
/// {@endtemplate}
/// {@macro pulumi_vpn_get_gateway_vco_routes_get_gateway_vco_routes_args_doc}
class GetGatewayVcoRoutesArgs {
  /// A list of Vco Route IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The Routing input type. Valid values: `custom`, `bgp`.
  final pulumi.Input<String>? routeEntryType;
  /// The status of the vpn route entry. Valid values: `normal`, `published`.
  final pulumi.Input<String>? status;
  /// The id of the vpn connection.
  final pulumi.Input<String> vpnConnectionId;

  /// Creates a new [GetGatewayVcoRoutesArgs].
  /// [ids] A list of Vco Route IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [routeEntryType] The Routing input type. Valid values: `custom`, `bgp`.
  /// [status] The status of the vpn route entry. Valid values: `normal`, `published`.
  /// [vpnConnectionId] The id of the vpn connection.
  GetGatewayVcoRoutesArgs({
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.routeEntryType,
    this.status,
    required this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'routeEntryType': ?routeEntryType,
      'status': ?status,
      'vpnConnectionId': vpnConnectionId,
    };
  }

  factory GetGatewayVcoRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayVcoRoutesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      routeEntryType: map['routeEntryType'] == null ? null : (map['routeEntryType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpnConnectionId: (map['vpnConnectionId'] as String).input(),
    );
  }
}

