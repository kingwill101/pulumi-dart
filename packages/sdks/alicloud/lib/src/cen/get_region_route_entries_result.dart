// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_route_entries_entry.dart';

/// Result data returned by getRegionRouteEntries.
class GetRegionRouteEntriesResult {
  /// A list of CEN Route Entries. Each element contains the following attributes:
  final List<GetRegionRouteEntriesEntry> entries;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String? outputFile;
  final String regionId;

  /// Creates a new [GetRegionRouteEntriesResult].
  /// [entries] A list of CEN Route Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  /// [regionId] Required.
  GetRegionRouteEntriesResult({
    required this.entries,
    required this.id,
    required this.instanceId,
    this.outputFile,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries':
          pulumi.Input.encodeList<
            GetRegionRouteEntriesEntry,
            Map<String, dynamic>
          >(entries, (value) => value.toMap()),
      'id': id,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'regionId': regionId,
    };
  }

  factory GetRegionRouteEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetRegionRouteEntriesResult(
      entries: pulumi.Input.decodeList<GetRegionRouteEntriesEntry>(
        map['entries']!,
        (value) => GetRegionRouteEntriesEntry.fromMap(
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
      regionId: map['regionId'] as String,
    );
  }
}
