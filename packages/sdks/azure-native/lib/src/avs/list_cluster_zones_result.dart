// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_zone_response.dart';

/// Result data returned by listClusterZones.
class ListClusterZonesResult {
  /// Zone and associated hosts info
  final List<ClusterZoneResponse>? zones;

  /// Creates a new [ListClusterZonesResult].
  /// [zones] Zone and associated hosts info
  const ListClusterZonesResult({
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zones': ?(() { final guardedValue = zones; if (guardedValue == null) return null; return pulumi.Input.encodeList<ClusterZoneResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListClusterZonesResult.fromMap(Map<String, dynamic> map) {
    return ListClusterZonesResult(
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterZoneResponse>(guardedValue, (value) => ClusterZoneResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
