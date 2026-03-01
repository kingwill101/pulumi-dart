// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZoneBindVpc {
  /// The region ID of the VPC.
  final String regionId;
  /// The name of the region where the VPC resides.
  final String regionName;
  /// The ID of the VPC.
  final String vpcId;
  /// The Name of the VPC.
  final String vpcName;

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
      regionId: map['regionId'] as String,
      regionName: map['regionName'] as String,
      vpcId: map['vpcId'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}

