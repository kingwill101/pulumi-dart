// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_route_entries_entry.dart';

/// Result data returned by getTransitRouterRouteEntries.
class GetTransitRouterRouteEntriesResult {
  /// A list of CEN Route Entries. Each element contains the following attributes:
  final List<GetTransitRouterRouteEntriesEntry> entries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN Transit Router Route Entry IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of CEN Transit Router Route Entry Names.
  final List<String> names;
  final String? outputFile;
  final String? status;
  final List<String>? transitRouterRouteEntryIds;
  final List<String>? transitRouterRouteEntryNames;
  /// The status of the route entry in CEN.
  final String? transitRouterRouteEntryStatus;
  final String transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteEntriesResult].
  /// [entries] A list of CEN Route Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN Transit Router Route Entry IDs.
  /// [nameRegex] Optional.
  /// [names] A list of CEN Transit Router Route Entry Names.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [transitRouterRouteEntryIds] Optional.
  /// [transitRouterRouteEntryNames] Optional.
  /// [transitRouterRouteEntryStatus] The status of the route entry in CEN.
  /// [transitRouterRouteTableId] Required.
  const GetTransitRouterRouteEntriesResult({
    required this.entries,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.transitRouterRouteEntryIds,
    this.transitRouterRouteEntryNames,
    this.transitRouterRouteEntryStatus,
    required this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.encodeList<GetTransitRouterRouteEntriesEntry, Map<String, dynamic>>(entries, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterRouteEntryIds': ?transitRouterRouteEntryIds,
      'transitRouterRouteEntryNames': ?transitRouterRouteEntryNames,
      'transitRouterRouteEntryStatus': ?transitRouterRouteEntryStatus,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteEntriesResult(
      entries: pulumi.Input.decodeList<GetTransitRouterRouteEntriesEntry>(map['entries']!, (value) => GetTransitRouterRouteEntriesEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterRouteEntryIds: (() { final guardedValue = map['transitRouterRouteEntryIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      transitRouterRouteEntryNames: (() { final guardedValue = map['transitRouterRouteEntryNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      transitRouterRouteEntryStatus: (() { final guardedValue = map['transitRouterRouteEntryStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] as String,
    );
  }
}

