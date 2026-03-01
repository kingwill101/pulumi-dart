// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZoneInstanceType {
  /// File transfer protocol type. Valid values:
  final String protocolType;
  /// The storage type of the nas zones. Valid values:
  final String storageType;

  /// Creates a new [GetZonesZoneInstanceType].
  /// [protocolType] File transfer protocol type. Valid values:
  /// [storageType] The storage type of the nas zones. Valid values:
  GetZonesZoneInstanceType({
    required this.protocolType,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolType': protocolType,
      'storageType': storageType,
    };
  }

  factory GetZonesZoneInstanceType.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneInstanceType(
      protocolType: map['protocolType'] as String,
      storageType: map['storageType'] as String,
    );
  }
}

