// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsRegionZone {
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetRegionsRegionZone].
  /// [zoneId] The ID of the zone.
  GetRegionsRegionZone({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetRegionsRegionZone.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegionZone(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

