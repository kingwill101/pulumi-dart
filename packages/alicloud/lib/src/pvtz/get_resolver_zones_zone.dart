// ignore_for_file: unused_element, unnecessary_cast


class GetResolverZonesZone {
  /// The status of the Zone.
  final String status;
  /// The zone ID.
  final String zoneId;

  /// Creates a new [GetResolverZonesZone].
  /// [status] The status of the Zone.
  /// [zoneId] The zone ID.
  GetResolverZonesZone({
    required this.status,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'zoneId': zoneId,
    };
  }

  factory GetResolverZonesZone.fromMap(Map<String, dynamic> map) {
    return GetResolverZonesZone(
      status: map['status'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

