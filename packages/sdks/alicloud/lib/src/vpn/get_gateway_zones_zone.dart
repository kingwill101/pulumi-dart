// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayZonesZone {
  /// The zone ID.
  final pulumi.Input<String> zoneId;
  /// The zone name.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetGatewayZonesZone].
  /// [zoneId] The zone ID.
  /// [zoneName] The zone name.
  const GetGatewayZonesZone({
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
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}

