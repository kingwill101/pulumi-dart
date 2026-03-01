// ignore_for_file: unused_element, unnecessary_cast

import 'pipe_target_parameters_ecs_task_parameters_network_configuration_aws_vpc_configuration.dart';

class PipeTargetParametersEcsTaskParametersNetworkConfiguration {
  /// Use this structure to specify the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the awsvpc network mode. Detailed below.
  final PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration?
  awsVpcConfiguration;

  /// Creates a new [PipeTargetParametersEcsTaskParametersNetworkConfiguration].
  /// [awsVpcConfiguration] Use this structure to specify the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the awsvpc network mode. Detailed below.
  PipeTargetParametersEcsTaskParametersNetworkConfiguration({
    this.awsVpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsVpcConfiguration': ?awsVpcConfiguration == null
          ? null
          : awsVpcConfiguration!.toMap(),
    };
  }

  factory PipeTargetParametersEcsTaskParametersNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersEcsTaskParametersNetworkConfiguration(
      awsVpcConfiguration: map['awsVpcConfiguration'] == null
          ? null
          : PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration.fromMap(
              (map['awsVpcConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
