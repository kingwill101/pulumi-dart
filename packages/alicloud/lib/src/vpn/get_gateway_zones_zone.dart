// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayZonesZone {
  /// The zone ID.
  final String zoneId;
  /// The zone name.
  final String zoneName;

  /// Creates a new [GetGatewayZonesZone].
  /// [zoneId] The zone ID.
  /// [zoneName] The zone name.
  GetGatewayZonesZone({
    required this.zoneId,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
      'zoneName': zoneName,
    };
  }

  factory GetGatewayZonesZone.fromMap(Map<String, dynamic> map) {
    return GetGatewayZonesZone(
      zoneId: map['zoneId'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

