// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_entries_entry.dart';

/// Result data returned by getRouteEntries.
class GetRouteEntriesResult {
  /// The destination CIDR block of the conflicted route entry.
  final String? cidrBlock;

  /// A list of CEN Route Entries. Each element contains the following attributes:
  final List<GetRouteEntriesEntry> entries;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ID of the CEN child instance.
  final String instanceId;
  final String? outputFile;

  /// ID of the route table.
  final String routeTableId;

  /// Creates a new [GetRouteEntriesResult].
  /// [cidrBlock] The destination CIDR block of the conflicted route entry.
  /// [entries] A list of CEN Route Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] ID of the CEN child instance.
  /// [outputFile] Optional.
  /// [routeTableId] ID of the route table.
  GetRouteEntriesResult({
    this.cidrBlock,
    required this.entries,
    required this.id,
    required this.instanceId,
    this.outputFile,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'entries':
          pulumi.Input.encodeList<GetRouteEntriesEntry, Map<String, dynamic>>(
            entries,
            (value) => value.toMap(),
          ),
      'id': id,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'routeTableId': routeTableId,
    };
  }

  factory GetRouteEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesResult(
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      entries: pulumi.Input.decodeList<GetRouteEntriesEntry>(
        map['entries']!,
        (value) => GetRouteEntriesEntry.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routeTableId: map['routeTableId'] as String,
    );
  }
}
