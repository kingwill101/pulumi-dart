// ignore_for_file: unused_element, unnecessary_cast


class GetDomainVpcOption {
  /// The availability zones used by the domain.
  final List<String> availabilityZones;
  /// The security groups used by the domain.
  final List<String> securityGroupIds;
  /// The subnets used by the domain.
  final List<String> subnetIds;
  /// The VPC used by the domain.
  final String vpcId;

  /// Creates a new [GetDomainVpcOption].
  /// [availabilityZones] The availability zones used by the domain.
  /// [securityGroupIds] The security groups used by the domain.
  /// [subnetIds] The subnets used by the domain.
  /// [vpcId] The VPC used by the domain.
  GetDomainVpcOption({
    required this.availabilityZones,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory GetDomainVpcOption.fromMap(Map<String, dynamic> map) {
    return GetDomainVpcOption(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

