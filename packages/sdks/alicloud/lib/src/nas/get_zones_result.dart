// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final String? fileSystemType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// A list of availability zone information collection.
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [fileSystemType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [zones] A list of availability zone information collection.
  GetZonesResult({
    this.fileSystemType,
    required this.id,
    this.outputFile,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemType': ?fileSystemType,
      'id': id,
      'outputFile': ?outputFile,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(
        zones,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      fileSystemType: (() {
        final guardedValue = map['fileSystemType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
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
