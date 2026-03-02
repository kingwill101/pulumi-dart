// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_collation_time_zones_collation_time_zone.dart';

/// Result data returned by getCollationTimeZones.
class GetCollationTimeZonesResult {
  final List<GetCollationTimeZonesCollationTimeZone>? collationTimeZones;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;

  /// Creates a new [GetCollationTimeZonesResult].
  /// [collationTimeZones] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  GetCollationTimeZonesResult({
    this.collationTimeZones,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collationTimeZones': ?collationTimeZones == null ? null : pulumi.Input.encodeList<GetCollationTimeZonesCollationTimeZone, Map<String, dynamic>>(collationTimeZones!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetCollationTimeZonesResult.fromMap(Map<String, dynamic> map) {
    return GetCollationTimeZonesResult(
      collationTimeZones: map['collationTimeZones'] == null ? null : pulumi.Input.decodeList<GetCollationTimeZonesCollationTimeZone>(map['collationTimeZones']!, (value) => GetCollationTimeZonesCollationTimeZone.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

