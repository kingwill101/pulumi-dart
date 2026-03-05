// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainVpcOption {
  /// The availability zones used by the domain.
  final pulumi.Input<List<String>> availabilityZones;
  /// The security groups used by the domain.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The subnets used by the domain.
  final pulumi.Input<List<String>> subnetIds;
  /// The VPC used by the domain.
  final pulumi.Input<String> vpcId;

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
      availabilityZones: pulumi.Input.fromValue((map['availabilityZones'] as List).cast<String>()),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

