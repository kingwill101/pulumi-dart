// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VPCDerivedInfo
class VPCDerivedInfoResponse {
  /// <p>The list of Availability Zones associated with the VPC subnets.</p>
  final pulumi.Input<List<String>>? availabilityZones;
  /// <p>The list of security group IDs associated with the VPC endpoints for the domain.</p>
  final pulumi.Input<List<String>>? securityGroupIds;
  /// <p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>
  final pulumi.Input<List<String>>? subnetIds;
  /// <p>The ID for your VPC. Amazon VPC generates this value when you create a VPC.</p>
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VPCDerivedInfoResponse].
  /// [availabilityZones] <p>The list of Availability Zones associated with the VPC subnets.</p>
  /// [securityGroupIds] <p>The list of security group IDs associated with the VPC endpoints for the domain.</p>
  /// [subnetIds] <p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>
  /// [vpcId] <p>The ID for your VPC. Amazon VPC generates this value when you create a VPC.</p>
  VPCDerivedInfoResponse({
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

  factory VPCDerivedInfoResponse.fromMap(Map<String, dynamic> map) {
    return VPCDerivedInfoResponse(
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones']! as List).cast<String>()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds']! as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

