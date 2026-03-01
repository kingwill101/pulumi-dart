// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZone {
  /// The ID of the zone.
  final String id;
  /// The ID of the region.
  final String regionId;
  /// The ID of the zone.
  final String zoneId;

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
      id: map['id'] as String,
      regionId: map['regionId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

