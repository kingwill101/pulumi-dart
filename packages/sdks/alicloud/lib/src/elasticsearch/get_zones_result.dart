// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of zone IDs.
  final List<String> ids;
  final bool? multi;
  final String? outputFile;
  /// A list of availability zones. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of zone IDs.
  /// [multi] Optional.
  /// [outputFile] Optional.
  /// [zones] A list of availability zones. Each element contains the following attributes:
  GetZonesResult({
    required this.id,
    required this.ids,
    this.multi,
    this.outputFile,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'multi': ?multi,
      'outputFile': ?outputFile,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      multi: map['multi'] == null ? null : map['multi'] as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

