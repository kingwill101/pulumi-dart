// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZone {
  /// ID of the zone.
  final String id;
  /// A list of zone ids in which the multi zone.
  final List<String> multiZoneIds;

  /// Creates a new [GetZonesZone].
  /// [id] ID of the zone.
  /// [multiZoneIds] A list of zone ids in which the multi zone.
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
      id: map['id'] as String,
      multiZoneIds: (map['multiZoneIds'] as List).cast<String>(),
    );
  }
}

