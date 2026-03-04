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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      routeEntryType: (() {
        final guardedValue = map['routeEntryType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnConnectionId: pulumi.Input.fromValue(map['vpnConnectionId'] as String),
    );
  }
}
