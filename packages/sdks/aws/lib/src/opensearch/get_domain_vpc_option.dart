// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainVpcOption {
  /// Availability zones used by the domain.
  final pulumi.Input<List<String>> availabilityZones;
  /// Security groups used by the domain.
  final pulumi.Input<List<String>> securityGroupIds;
  /// Subnets used by the domain.
  final pulumi.Input<List<String>> subnetIds;
  /// VPC used by the domain.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetDomainVpcOption].
  /// [availabilityZones] Availability zones used by the domain.
  /// [securityGroupIds] Security groups used by the domain.
  /// [subnetIds] Subnets used by the domain.
  /// [vpcId] VPC used by the domain.
  const GetDomainVpcOption({
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

