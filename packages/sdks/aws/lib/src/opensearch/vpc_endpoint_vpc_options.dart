// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEndpointVpcOptions {
  final pulumi.Input<List<String>>? availabilityZones;
  /// The list of security group IDs associated with the VPC endpoints for the domain. If you do not provide a security group ID, OpenSearch Service uses the default security group for the VPC.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of subnet IDs associated with the VPC endpoints for the domain. If your domain uses multiple Availability Zones, you need to provide two subnet IDs, one per zone. Otherwise, provide only one.
  final pulumi.Input<List<String>> subnetIds;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcEndpointVpcOptions].
  /// [availabilityZones] Optional.
  /// [securityGroupIds] The list of security group IDs associated with the VPC endpoints for the domain. If you do not provide a security group ID, OpenSearch Service uses the default security group for the VPC.
  /// [subnetIds] A list of subnet IDs associated with the VPC endpoints for the domain. If your domain uses multiple Availability Zones, you need to provide two subnet IDs, one per zone. Otherwise, provide only one.
  /// [vpcId] Optional.
  VpcEndpointVpcOptions({
    this.availabilityZones,
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory VpcEndpointVpcOptions.fromMap(Map<String, dynamic> map) {
    return VpcEndpointVpcOptions(
      availabilityZones: map['availabilityZones'] == null ? null : (((map['availabilityZones'] as List).cast<String>()).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

