// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_pbr_route_entries_get_pbr_route_entries_args_doc}
/// Arguments for getPbrRouteEntries.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_pbr_route_entries_get_pbr_route_entries_args_doc}
class GetPbrRouteEntriesArgs {
  /// A list of VPN Pbr Route Entries IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the VPN gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [GetPbrRouteEntriesArgs].
  /// [ids] A list of VPN Pbr Route Entries IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [vpnGatewayId] The ID of the VPN gateway.
  GetPbrRouteEntriesArgs({
    this.ids,
    this.outputFile,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetPbrRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetPbrRouteEntriesArgs(
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
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
    );
  }
}
