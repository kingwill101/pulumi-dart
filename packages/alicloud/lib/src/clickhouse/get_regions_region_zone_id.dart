// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegionZoneId {
  /// Whether to support vpc network.
  final bool vpcEnabled;
  /// The zone ID.
  final String zoneId;

  /// Creates a new [GetRegionsRegionZoneId].
  /// [vpcEnabled] Whether to support vpc network.
  /// [zoneId] The zone ID.
  GetRegionsRegionZoneId({
    required this.vpcEnabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcEnabled': vpcEnabled,
      'zoneId': zoneId,
    };
  }

  factory GetRegionsRegionZoneId.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegionZoneId(
      vpcEnabled: map['vpcEnabled'] as bool,
      zoneId: map['zoneId'] as String,
    );
  }
}

