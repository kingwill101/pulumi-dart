// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration {
  /// Whether the task's elastic network interface receives a public IP address. You can specify ENABLED only when LaunchType in EcsParameters is set to FARGATE. Valid Values: ENABLED, DISABLED.
  final pulumi.Input<String?>? assignPublicIp;
  /// Security groups associated with the task. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.
  final pulumi.Input<List<String>?>? securityGroups;
  /// Subnets associated with the task. These subnets must all be in the same VPC. You can specify as many as 16 subnets.
  final pulumi.Input<List<String>?>? subnets;

  /// Creates a new [PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration].
  /// [assignPublicIp] Whether the task's elastic network interface receives a public IP address. You can specify ENABLED only when LaunchType in EcsParameters is set to FARGATE. Valid Values: ENABLED, DISABLED.
  /// [securityGroups] Security groups associated with the task. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.
  /// [subnets] Subnets associated with the task. These subnets must all be in the same VPC. You can specify as many as 16 subnets.
  const PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': ?assignPublicIp,
      'securityGroups': ?securityGroups,
      'subnets': ?subnets,
    };
  }

  factory PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration(
      assignPublicIp: (() { final guardedValue = map['assignPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
