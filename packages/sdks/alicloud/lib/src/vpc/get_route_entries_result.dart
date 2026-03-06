// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_entries_entry.dart';

/// Result data returned by getRouteEntries.
class GetRouteEntriesResult {
  /// The destination CIDR block of the route entry.
  final String? cidrBlock;
  /// A list of Route Entries. Each element contains the following attributes:
  final List<GetRouteEntriesEntry> entries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The instance ID of the next hop.
  final String? instanceId;
  final String? outputFile;
  /// The ID of the router table to which the route entry belongs.
  final String routeTableId;
  /// The type of the route entry.
  final String? type;

  /// Creates a new [GetRouteEntriesResult].
  /// [cidrBlock] The destination CIDR block of the route entry.
  /// [entries] A list of Route Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] The instance ID of the next hop.
  /// [outputFile] Optional.
  /// [routeTableId] The ID of the router table to which the route entry belongs.
  /// [type] The type of the route entry.
  const GetRouteEntriesResult({
    this.cidrBlock,
    required this.entries,
    required this.id,
    this.instanceId,
    this.outputFile,
    required this.routeTableId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'entries': pulumi.Input.encodeList<GetRouteEntriesEntry, Map<String, dynamic>>(entries, (value) => value.toMap()),
      'id': id,
      'instanceId': ?instanceId,
      'outputFile': ?outputFile,
      'routeTableId': routeTableId,
      'type': ?type,
    };
  }

  factory GetRouteEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesResult(
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entries: pulumi.Input.decodeList<GetRouteEntriesEntry>(map['entries']!, (value) => GetRouteEntriesEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeTableId: map['routeTableId'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

