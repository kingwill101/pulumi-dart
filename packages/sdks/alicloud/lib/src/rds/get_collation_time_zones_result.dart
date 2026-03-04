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
      'collationTimeZones': ?(() {
        final guardedValue = collationTimeZones;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetCollationTimeZonesCollationTimeZone,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetCollationTimeZonesResult.fromMap(Map<String, dynamic> map) {
    return GetCollationTimeZonesResult(
      collationTimeZones: (() {
        final guardedValue = map['collationTimeZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetCollationTimeZonesCollationTimeZone>(
          guardedValue,
          (value) => GetCollationTimeZonesCollationTimeZone.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
