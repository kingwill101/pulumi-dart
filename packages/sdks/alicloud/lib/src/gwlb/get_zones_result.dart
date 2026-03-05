// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final String? acceptLanguage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Zone IDs.
  final List<String> ids;
  final String? outputFile;
  /// A list of Zone Entries. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [acceptLanguage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Zone IDs.
  /// [outputFile] Optional.
  /// [zones] A list of Zone Entries. Each element contains the following attributes:
  GetZonesResult({
    this.acceptLanguage,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones']!, (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

