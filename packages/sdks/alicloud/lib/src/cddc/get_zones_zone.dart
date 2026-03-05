// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// The ID of the zone.
  final pulumi.Input<String> id;
  /// The ID of the region.
  final pulumi.Input<String> regionId;
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZonesZone].
  /// [id] The ID of the zone.
  /// [regionId] The ID of the region.
  /// [zoneId] The ID of the zone.
  GetZonesZone({
    required this.id,
    required this.regionId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'regionId': regionId,
      'zoneId': zoneId,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      id: pulumi.Input.fromValue(map['id'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

