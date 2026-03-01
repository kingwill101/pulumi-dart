// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_zone_response.dart';

/// Result data returned by listClusterZones.
class ListClusterZonesResult {
  /// Zone and associated hosts info
  final List<ClusterZoneResponse>? zones;

  /// Creates a new [ListClusterZonesResult].
  /// [zones] Zone and associated hosts info
  ListClusterZonesResult({
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zones': ?zones == null ? null : pulumi.Input.encodeList<ClusterZoneResponse, Map<String, dynamic>>(zones!, (value) => value.toMap()),
    };
  }

  factory ListClusterZonesResult.fromMap(Map<String, dynamic> map) {
    return ListClusterZonesResult(
      zones: map['zones'] == null ? null : pulumi.Input.decodeList<ClusterZoneResponse>(map['zones'], (value) => ClusterZoneResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

