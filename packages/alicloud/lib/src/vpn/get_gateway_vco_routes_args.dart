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
    List<String>? ids,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? routeEntryType,
    String? status,
    required String vpnConnectionId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      routeEntryType = pulumi.Input.asOptionalInput<String>(routeEntryType),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpnConnectionId = pulumi.Input.asInput<String>(vpnConnectionId);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      routeEntryType: map['routeEntryType'] == null ? null : map['routeEntryType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpnConnectionId: map['vpnConnectionId'] as String,
    );
  }
}

