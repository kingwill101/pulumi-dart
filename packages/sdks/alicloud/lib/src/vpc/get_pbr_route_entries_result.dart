// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pbr_route_entries_entry.dart';

/// Result data returned by getPbrRouteEntries.
class GetPbrRouteEntriesResult {
  /// A list of VPN Pbr Route Entries. Each element contains the following attributes:
  final List<GetPbrRouteEntriesEntry> entries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The ID of the vpn gateway.
  final String vpnGatewayId;

  /// Creates a new [GetPbrRouteEntriesResult].
  /// [entries] A list of VPN Pbr Route Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [vpnGatewayId] The ID of the vpn gateway.
  GetPbrRouteEntriesResult({
    required this.entries,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.encodeList<GetPbrRouteEntriesEntry, Map<String, dynamic>>(entries, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetPbrRouteEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetPbrRouteEntriesResult(
      entries: pulumi.Input.decodeList<GetPbrRouteEntriesEntry>(map['entries']!, (value) => GetPbrRouteEntriesEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}

