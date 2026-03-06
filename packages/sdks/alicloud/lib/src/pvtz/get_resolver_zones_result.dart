// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_zones_zone.dart';

/// Result data returned by getResolverZones.
class GetResolverZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final String? status;
  final List<GetResolverZonesZone> zones;

  /// Creates a new [GetResolverZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [zones] Required.
  const GetResolverZonesResult({
    required this.id,
    this.outputFile,
    this.status,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'status': ?status,
      'zones': pulumi.Input.encodeList<GetResolverZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetResolverZonesResult.fromMap(Map<String, dynamic> map) {
    return GetResolverZonesResult(
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetResolverZonesZone>(map['zones']!, (value) => GetResolverZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

