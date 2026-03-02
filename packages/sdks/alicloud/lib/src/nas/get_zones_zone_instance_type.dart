// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZoneInstanceType {
  /// File transfer protocol type. Valid values:
  final pulumi.Input<String> protocolType;
  /// The storage type of the nas zones. Valid values:
  final pulumi.Input<String> storageType;

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
      protocolType: (map['protocolType'] as String).input(),
      storageType: (map['storageType'] as String).input(),
    );
  }
}

