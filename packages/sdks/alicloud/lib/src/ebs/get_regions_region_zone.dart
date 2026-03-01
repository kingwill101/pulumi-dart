// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegionZone {
  /// The ID of the zone.
  final String zoneId;

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
      zoneId: map['zoneId'] as String,
    );
  }
}

