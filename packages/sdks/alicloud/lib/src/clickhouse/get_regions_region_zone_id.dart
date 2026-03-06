// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsRegionZoneId {
  /// Whether to support vpc network.
  final pulumi.Input<bool> vpcEnabled;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetRegionsRegionZoneId].
  /// [vpcEnabled] Whether to support vpc network.
  /// [zoneId] The zone ID.
  const GetRegionsRegionZoneId({
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
      vpcEnabled: pulumi.Input.fromValue(map['vpcEnabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

