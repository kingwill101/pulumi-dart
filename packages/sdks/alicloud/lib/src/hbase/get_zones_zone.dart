// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// ID of the zone.
  final pulumi.Input<String> id;
  /// A list of zone ids in which the multi zone. Removed from v1.99.0.
  final pulumi.Input<List<String>> multiZoneIds;

  /// Creates a new [GetZonesZone].
  /// [id] ID of the zone.
  /// [multiZoneIds] A list of zone ids in which the multi zone. Removed from v1.99.0.
  GetZonesZone({
    required this.id,
    required this.multiZoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'multiZoneIds': multiZoneIds,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      id: (map['id'] as String).input(),
      multiZoneIds: ((map['multiZoneIds'] as List).cast<String>()).input(),
    );
  }
}

