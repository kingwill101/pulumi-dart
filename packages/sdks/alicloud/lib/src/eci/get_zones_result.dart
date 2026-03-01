// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  /// A list of eci Instance zones. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [zones] A list of eci Instance zones. Each element contains the following attributes:
  GetZonesResult({
    required this.id,
    this.outputFile,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

