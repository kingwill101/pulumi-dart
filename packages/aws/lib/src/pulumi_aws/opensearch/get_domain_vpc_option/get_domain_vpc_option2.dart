// ignore_for_file: unused_element, unnecessary_cast

class GetDomainVpcOption2 {
  /// Availability zones used by the domain.
  final List<String> availabilityZones;

  /// Security groups used by the domain.
  final List<String> securityGroupIds;

  /// Subnets used by the domain.
  final List<String> subnetIds;

  /// VPC used by the domain.
  final String vpcId;

  GetDomainVpcOption2({
    required this.availabilityZones,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetDomainVpcOption2.fromMap(Map<String, dynamic> map) {
    return GetDomainVpcOption2(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
