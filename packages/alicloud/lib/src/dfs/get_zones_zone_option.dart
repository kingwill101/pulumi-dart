// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZoneOption {
  /// The protocol type. Valid values: `HDFS`.
  final String protocolType;
  /// The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  final String storageType;

  /// Creates a new [GetZonesZoneOption].
  /// [protocolType] The protocol type. Valid values: `HDFS`.
  /// [storageType] The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  GetZonesZoneOption({
    required this.protocolType,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolType': protocolType,
      'storageType': storageType,
    };
  }

  factory GetZonesZoneOption.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneOption(
      protocolType: map['protocolType'] as String,
      storageType: map['storageType'] as String,
    );
  }
}

