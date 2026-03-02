// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration {
  /// Specifies whether the task's elastic network interface receives a public IP address. You can specify ENABLED only when LaunchType in EcsParameters is set to FARGATE. Valid Values: ENABLED, DISABLED.
  final pulumi.Input<String>? assignPublicIp;
  final pulumi.Input<List<String>>? securityGroups;
  final pulumi.Input<List<String>>? subnets;

  /// Creates a new [PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration].
  /// [assignPublicIp] Specifies whether the task's elastic network interface receives a public IP address. You can specify ENABLED only when LaunchType in EcsParameters is set to FARGATE. Valid Values: ENABLED, DISABLED.
  /// [securityGroups] Optional.
  /// [subnets] Optional.
  PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration({
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
      assignPublicIp: map['assignPublicIp'] == null ? null : (map['assignPublicIp'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      subnets: map['subnets'] == null ? null : ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

