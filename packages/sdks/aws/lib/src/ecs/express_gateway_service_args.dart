// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_gateway_service_network_configuration.dart';
import 'express_gateway_service_primary_container.dart';
import 'express_gateway_service_scaling_target.dart';
import 'express_gateway_service_timeouts.dart';

/// {@template pulumi_ecs_express_gateway_service_express_gateway_service_args_doc}
/// The set of arguments for ExpressGatewayService.
/// {@endtemplate}
/// {@macro pulumi_ecs_express_gateway_service_express_gateway_service_args_doc}
class ExpressGatewayServiceArgs {
  /// Name or ARN of the ECS cluster. Defaults to `default`.
  final pulumi.Input<String?>? cluster;
  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096. Defaults to `1024`.
  final pulumi.Input<String?>? cpu;
  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  final pulumi.Input<String> executionRoleArn;
  /// Path for health check requests. Defaults to `/`.
  final pulumi.Input<String?>? healthCheckPath;
  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> infrastructureRoleArn;
  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192. Defaults to `2048`.
  final pulumi.Input<String?>? memory;
  /// Network configuration for the service. See `networkConfiguration` Block below.
  final pulumi.Input<List<ExpressGatewayServiceNetworkConfiguration>?>? networkConfigurations;
  final pulumi.Input<ExpressGatewayServicePrimaryContainer> primaryContainer;
  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  final pulumi.Input<String?>? region;
  /// Auto-scaling configuration for the service. See `scalingTarget` Block below.
  final pulumi.Input<List<ExpressGatewayServiceScalingTarget>?>? scalingTargets;
  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? serviceName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String?>? taskRoleArn;
  final pulumi.Input<ExpressGatewayServiceTimeouts?>? timeouts;
  /// Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  final pulumi.Input<bool?>? waitForSteadyState;

  /// Creates a new [ExpressGatewayServiceArgs].
  /// [cluster] Name or ARN of the ECS cluster. Defaults to `default`.
  /// [cpu] Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096. Defaults to `1024`.
  /// [executionRoleArn] ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  /// [healthCheckPath] Path for health check requests. Defaults to `/`.
  /// [infrastructureRoleArn] ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  /// [memory] Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192. Defaults to `2048`.
  /// [networkConfigurations] Network configuration for the service. See `networkConfiguration` Block below.
  /// [primaryContainer] Required.
  /// [region] AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  /// [scalingTargets] Auto-scaling configuration for the service. See `scalingTarget` Block below.
  /// [serviceName] Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskRoleArn] ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [timeouts] Optional.
  /// [waitForSteadyState] Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  const ExpressGatewayServiceArgs({
    this.cluster,
    this.cpu,
    required this.executionRoleArn,
    this.healthCheckPath,
    required this.infrastructureRoleArn,
    this.memory,
    this.networkConfigurations,
    required this.primaryContainer,
    this.region,
    this.scalingTargets,
    this.serviceName,
    this.tags,
    this.taskRoleArn,
    this.timeouts,
    this.waitForSteadyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'cpu': ?cpu,
      'executionRoleArn': executionRoleArn,
      'healthCheckPath': ?healthCheckPath,
      'infrastructureRoleArn': infrastructureRoleArn,
      'memory': ?memory,
      'networkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServiceNetworkConfiguration>, List<Map<String, dynamic>>>(networkConfigurations, (value) => pulumi.Input.encodeList<ExpressGatewayServiceNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryContainer': pulumi.Input.mapInputValue<ExpressGatewayServicePrimaryContainer, Map<String, dynamic>>(primaryContainer, (value) => value.toMap()),
      'region': ?region,
      'scalingTargets': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServiceScalingTarget>, List<Map<String, dynamic>>>(scalingTargets, (value) => pulumi.Input.encodeList<ExpressGatewayServiceScalingTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceName': ?serviceName,
      'tags': ?tags,
      'taskRoleArn': ?taskRoleArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExpressGatewayServiceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForSteadyState': ?waitForSteadyState,
    };
  }

  factory ExpressGatewayServiceArgs.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceArgs(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureRoleArn: pulumi.Input.fromValue(map['infrastructureRoleArn'] as String),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfigurations: (() { final guardedValue = map['networkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(guardedValue, (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primaryContainer: pulumi.Input.fromValue(ExpressGatewayServicePrimaryContainer.fromMap((map['primaryContainer']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingTargets: (() { final guardedValue = map['scalingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(guardedValue, (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressGatewayServiceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForSteadyState: (() { final guardedValue = map['waitForSteadyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
