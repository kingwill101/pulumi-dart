// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZoneOption {
  /// The protocol type. Valid values: `HDFS`.
  final pulumi.Input<String> protocolType;
  /// The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  final pulumi.Input<String> storageType;

  /// Creates a new [GetZonesZoneOption].
  /// [protocolType] The protocol type. Valid values: `HDFS`.
  /// [storageType] The storage specifications of the File system. Valid values: `PERFORMANCE`, `STANDARD`.
  const GetZonesZoneOption({
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
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}

