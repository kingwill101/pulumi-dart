// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforceWorkforceVpcConfig {
  /// The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The ID of the subnets in the VPC that you want to connect.
  final pulumi.Input<List<String>>? subnets;
  /// The IDs for the VPC service endpoints of your VPC workforce.
  final pulumi.Input<String>? vpcEndpointId;
  /// The ID of the VPC that the workforce uses for communication.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [WorkforceWorkforceVpcConfig].
  /// [securityGroupIds] The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet.
  /// [subnets] The ID of the subnets in the VPC that you want to connect.
  /// [vpcEndpointId] The IDs for the VPC service endpoints of your VPC workforce.
  /// [vpcId] The ID of the VPC that the workforce uses for communication.
  WorkforceWorkforceVpcConfig({
    this.securityGroupIds,
    this.subnets,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnets': ?subnets,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory WorkforceWorkforceVpcConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceWorkforceVpcConfig(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

