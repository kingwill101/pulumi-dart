// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final String? engine;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of zone IDs.
  final List<String> ids;
  final String? instanceChargeType;
  final bool? multi;
  final String? outputFile;
  final String? productType;
  /// A list of availability zones. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [engine] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of zone IDs.
  /// [instanceChargeType] Optional.
  /// [multi] Optional.
  /// [outputFile] Optional.
  /// [productType] Optional.
  /// [zones] A list of availability zones. Each element contains the following attributes:
  GetZonesResult({
    this.engine,
    required this.id,
    required this.ids,
    this.instanceChargeType,
    this.multi,
    this.outputFile,
    this.productType,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'id': id,
      'ids': ids,
      'instanceChargeType': ?instanceChargeType,
      'multi': ?multi,
      'outputFile': ?outputFile,
      'productType': ?productType,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      engine: map['engine'] == null ? null : map['engine'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      multi: map['multi'] == null ? null : map['multi'] as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productType: map['productType'] == null ? null : map['productType'] as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

