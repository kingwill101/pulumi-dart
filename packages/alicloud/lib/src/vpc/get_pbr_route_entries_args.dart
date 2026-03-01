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
    List<String>? ids,
    String? outputFile,
    required String vpnGatewayId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetPbrRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetPbrRouteEntriesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}

