// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_zones_zone.dart';

/// Result data returned by getGatewayZones.
class GetGatewayZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Zone IDs.
  final List<String> ids;
  final String? outputFile;
  final String spec;
  /// A list of Zone Entries. Each element contains the following attributes:
  final List<GetGatewayZonesZone> zones;

  /// Creates a new [GetGatewayZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Zone IDs.
  /// [outputFile] Optional.
  /// [spec] Required.
  /// [zones] A list of Zone Entries. Each element contains the following attributes:
  GetGatewayZonesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.spec,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'spec': spec,
      'zones': pulumi.Input.encodeList<GetGatewayZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetGatewayZonesResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayZonesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      spec: map['spec'] as String,
      zones: pulumi.Input.decodeList<GetGatewayZonesZone>(map['zones'], (value) => GetGatewayZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

