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
  final pulumi.Input<String>? cluster;
  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  final pulumi.Input<String>? cpu;
  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  final pulumi.Input<String> executionRoleArn;
  /// Path for health check requests. Defaults to `/ping`.
  final pulumi.Input<String>? healthCheckPath;
  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> infrastructureRoleArn;
  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  final pulumi.Input<String>? memory;
  final pulumi.Input<List<ExpressGatewayServiceNetworkConfiguration>>? networkConfigurations;
  final pulumi.Input<ExpressGatewayServicePrimaryContainer> primaryContainer;
  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  final pulumi.Input<String>? region;
  final pulumi.Input<List<ExpressGatewayServiceScalingTarget>>? scalingTargets;
  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceName;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String>? taskRoleArn;
  final pulumi.Input<ExpressGatewayServiceTimeouts>? timeouts;
  /// Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  final pulumi.Input<bool>? waitForSteadyState;

  /// Creates a new [ExpressGatewayServiceArgs].
  /// [cluster] Name or ARN of the ECS cluster. Defaults to `default`.
  /// [cpu] Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  /// [executionRoleArn] ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  /// [healthCheckPath] Path for health check requests. Defaults to `/ping`.
  /// [infrastructureRoleArn] ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  /// [memory] Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  /// [networkConfigurations] Optional.
  /// [primaryContainer] Required.
  /// [region] AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  /// [scalingTargets] Optional.
  /// [serviceName] Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskRoleArn] ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [timeouts] Optional.
  /// [waitForSteadyState] Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  ExpressGatewayServiceArgs({
    pulumi.Output<String>? cluster,
    pulumi.Output<String>? cpu,
    required pulumi.Output<String> executionRoleArn,
    pulumi.Output<String>? healthCheckPath,
    required pulumi.Output<String> infrastructureRoleArn,
    pulumi.Output<String>? memory,
    pulumi.Output<List<ExpressGatewayServiceNetworkConfiguration>>? networkConfigurations,
    required pulumi.Output<ExpressGatewayServicePrimaryContainer> primaryContainer,
    pulumi.Output<String>? region,
    pulumi.Output<List<ExpressGatewayServiceScalingTarget>>? scalingTargets,
    pulumi.Output<String>? serviceName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? taskRoleArn,
    pulumi.Output<ExpressGatewayServiceTimeouts>? timeouts,
    pulumi.Output<bool>? waitForSteadyState,
  }) :
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      cpu = pulumi.Input.asOptionalInput<String>(cpu),
      executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
      healthCheckPath = pulumi.Input.asOptionalInput<String>(healthCheckPath),
      infrastructureRoleArn = pulumi.Input.asInput<String>(infrastructureRoleArn),
      memory = pulumi.Input.asOptionalInput<String>(memory),
      networkConfigurations = pulumi.Input.asOptionalInput<List<ExpressGatewayServiceNetworkConfiguration>>(networkConfigurations),
      primaryContainer = pulumi.Input.asInput<ExpressGatewayServicePrimaryContainer>(primaryContainer),
      region = pulumi.Input.asOptionalInput<String>(region),
      scalingTargets = pulumi.Input.asOptionalInput<List<ExpressGatewayServiceScalingTarget>>(scalingTargets),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taskRoleArn = pulumi.Input.asOptionalInput<String>(taskRoleArn),
      timeouts = pulumi.Input.asOptionalInput<ExpressGatewayServiceTimeouts>(timeouts),
      waitForSteadyState = pulumi.Input.asOptionalInput<bool>(waitForSteadyState);

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
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      cpu: map['cpu'] == null ? null : pulumi.Output.create<String>(map['cpu'] as String),
      executionRoleArn: pulumi.Output.create<String>(map['executionRoleArn'] as String),
      healthCheckPath: map['healthCheckPath'] == null ? null : pulumi.Output.create<String>(map['healthCheckPath'] as String),
      infrastructureRoleArn: pulumi.Output.create<String>(map['infrastructureRoleArn'] as String),
      memory: map['memory'] == null ? null : pulumi.Output.create<String>(map['memory'] as String),
      networkConfigurations: map['networkConfigurations'] == null ? null : pulumi.Output.create<List<ExpressGatewayServiceNetworkConfiguration>>(pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(map['networkConfigurations'], (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      primaryContainer: pulumi.Output.create<ExpressGatewayServicePrimaryContainer>(ExpressGatewayServicePrimaryContainer.fromMap((map['primaryContainer'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scalingTargets: map['scalingTargets'] == null ? null : pulumi.Output.create<List<ExpressGatewayServiceScalingTarget>>(pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(map['scalingTargets'], (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>()))),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      taskRoleArn: map['taskRoleArn'] == null ? null : pulumi.Output.create<String>(map['taskRoleArn'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ExpressGatewayServiceTimeouts>(ExpressGatewayServiceTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      waitForSteadyState: map['waitForSteadyState'] == null ? null : pulumi.Output.create<bool>(map['waitForSteadyState'] as bool),
    );
  }
}

