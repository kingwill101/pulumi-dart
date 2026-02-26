// ignore_for_file: unused_element, unnecessary_cast

class GetDirectoryVpcSetting {
  final List<String> availabilityZones;

  /// Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  final List<String> subnetIds;

  /// ID of the VPC that the connector is in.
  final String vpcId;

  GetDirectoryVpcSetting({
    required this.availabilityZones,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetDirectoryVpcSetting.fromMap(Map<String, dynamic> map) {
    return GetDirectoryVpcSetting(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
