// ignore_for_file: unused_element, unnecessary_cast


class GetEnhancedNatAvailableZonesZone {
  /// Name of the available zone.
  final String localName;
  /// The ID of the available zone.
  final String zoneId;

  /// Creates a new [GetEnhancedNatAvailableZonesZone].
  /// [localName] Name of the available zone.
  /// [zoneId] The ID of the available zone.
  GetEnhancedNatAvailableZonesZone({
    required this.localName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localName': localName,
      'zoneId': zoneId,
    };
  }

  factory GetEnhancedNatAvailableZonesZone.fromMap(Map<String, dynamic> map) {
    return GetEnhancedNatAvailableZonesZone(
      localName: map['localName'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

