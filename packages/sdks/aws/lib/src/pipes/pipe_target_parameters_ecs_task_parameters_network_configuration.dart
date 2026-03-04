// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_network_configuration_aws_vpc_configuration.dart';

class PipeTargetParametersEcsTaskParametersNetworkConfiguration {
  /// Use this structure to specify the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the awsvpc network mode. Detailed below.
  final pulumi.Input<
    PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration
  >?
  awsVpcConfiguration;

  /// Creates a new [PipeTargetParametersEcsTaskParametersNetworkConfiguration].
  /// [awsVpcConfiguration] Use this structure to specify the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the awsvpc network mode. Detailed below.
  PipeTargetParametersEcsTaskParametersNetworkConfiguration({
    this.awsVpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsVpcConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration,
            Map<String, dynamic>
          >(awsVpcConfiguration, (value) => value.toMap()),
    };
  }

  factory PipeTargetParametersEcsTaskParametersNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersEcsTaskParametersNetworkConfiguration(
      awsVpcConfiguration: (() {
        final guardedValue = map['awsVpcConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
