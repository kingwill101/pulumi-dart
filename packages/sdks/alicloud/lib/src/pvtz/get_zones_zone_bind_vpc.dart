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
      regionId: (map['regionId'] as String).input(),
      regionName: (map['regionName'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vpcName: (map['vpcName'] as String).input(),
    );
  }
}

