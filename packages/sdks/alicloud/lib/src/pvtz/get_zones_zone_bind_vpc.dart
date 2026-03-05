// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZoneBindVpc {
  /// The region ID of the VPC.
  final pulumi.Input<String> regionId;
  /// The name of the region where the VPC resides.
  final pulumi.Input<String> regionName;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The Name of the VPC.
  final pulumi.Input<String> vpcName;

  /// Creates a new [GetZonesZoneBindVpc].
  /// [regionId] The region ID of the VPC.
  /// [regionName] The name of the region where the VPC resides.
  /// [vpcId] The ID of the VPC.
  /// [vpcName] The Name of the VPC.
  GetZonesZoneBindVpc({
    required this.regionId,
    required this.regionName,
    required this.vpcId,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': regionId,
      'regionName': regionName,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetZonesZoneBindVpc.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneBindVpc(
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}

