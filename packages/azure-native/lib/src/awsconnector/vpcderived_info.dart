// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VPCDerivedInfo
class VPCDerivedInfo {
  /// <p>The list of Availability Zones associated with the VPC subnets.</p>
  final List<String>? availabilityZones;
  /// <p>The list of security group IDs associated with the VPC endpoints for the domain.</p>
  final List<String>? securityGroupIds;
  /// <p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>
  final List<String>? subnetIds;
  /// <p>The ID for your VPC. Amazon VPC generates this value when you create a VPC.</p>
  final String? vpcId;

  /// Creates a new [VPCDerivedInfo].
  /// [availabilityZones] <p>The list of Availability Zones associated with the VPC subnets.</p>
  /// [securityGroupIds] <p>The list of security group IDs associated with the VPC endpoints for the domain.</p>
  /// [subnetIds] <p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>
  /// [vpcId] <p>The ID for your VPC. Amazon VPC generates this value when you create a VPC.</p>
  VPCDerivedInfo({
    this.availabilityZones,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory VPCDerivedInfo.fromMap(Map<String, dynamic> map) {
    return VPCDerivedInfo(
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null ? null : (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

