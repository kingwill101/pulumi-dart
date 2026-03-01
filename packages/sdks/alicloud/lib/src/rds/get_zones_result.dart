// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final String? category;
  final String? dbInstanceStorageType;
  final String? engine;
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of zone IDs.
  final List<String> ids;
  final String? instanceChargeType;
  final bool? multi;
  final bool? multiZone;
  final String? outputFile;
  /// A list of availability zones. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [category] Optional.
  /// [dbInstanceStorageType] Optional.
  /// [engine] Optional.
  /// [engineVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of zone IDs.
  /// [instanceChargeType] Optional.
  /// [multi] Optional.
  /// [multiZone] Optional.
  /// [outputFile] Optional.
  /// [zones] A list of availability zones. Each element contains the following attributes:
  GetZonesResult({
    this.category,
    this.dbInstanceStorageType,
    this.engine,
    this.engineVersion,
    required this.id,
    required this.ids,
    this.instanceChargeType,
    this.multi,
    this.multiZone,
    this.outputFile,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': id,
      'ids': ids,
      'instanceChargeType': ?instanceChargeType,
      'multi': ?multi,
      'multiZone': ?multiZone,
      'outputFile': ?outputFile,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      category: map['category'] == null ? null : map['category'] as String,
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : map['dbInstanceStorageType'] as String,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      multi: map['multi'] == null ? null : map['multi'] as bool,
      multiZone: map['multiZone'] == null ? null : map['multiZone'] as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

