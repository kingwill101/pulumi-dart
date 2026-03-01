// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enhanced_nat_available_zones_zone.dart';

/// Result data returned by getEnhancedNatAvailableZones.
class GetEnhancedNatAvailableZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of available zones IDs by the enhanced NAT gateway.
  final List<String> ids;
  final String? outputFile;
  /// A list of available zones. Each element contains the following attributes:
  final List<GetEnhancedNatAvailableZonesZone> zones;

  /// Creates a new [GetEnhancedNatAvailableZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of available zones IDs by the enhanced NAT gateway.
  /// [outputFile] Optional.
  /// [zones] A list of available zones. Each element contains the following attributes:
  GetEnhancedNatAvailableZonesResult({
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
      'zones': pulumi.Input.encodeList<GetEnhancedNatAvailableZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetEnhancedNatAvailableZonesResult.fromMap(Map<String, dynamic> map) {
    return GetEnhancedNatAvailableZonesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      zones: pulumi.Input.decodeList<GetEnhancedNatAvailableZonesZone>(map['zones'], (value) => GetEnhancedNatAvailableZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

