// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [zones] Required.
  GetZonesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(
        zones,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zones: pulumi.Input.decodeList<GetZonesZone>(
        map['zones']!,
        (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
