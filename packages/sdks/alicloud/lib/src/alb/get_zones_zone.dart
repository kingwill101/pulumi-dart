// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZone {
  /// The ID of zone.
  final String id;
  /// The local name.
  final String localName;
  /// The zone ID.
  final String zoneId;

  /// Creates a new [GetZonesZone].
  /// [id] The ID of zone.
  /// [localName] The local name.
  /// [zoneId] The zone ID.
  GetZonesZone({
    required this.id,
    required this.localName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localName': localName,
      'zoneId': zoneId,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      id: map['id'] as String,
      localName: map['localName'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

