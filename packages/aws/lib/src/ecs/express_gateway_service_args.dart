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
  final pulumi.Input<List<ExpressGatewayServiceNetworkConfiguration>>?
      networkConfigurations;
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
    String? cluster,
    String? cpu,
    required String executionRoleArn,
    String? healthCheckPath,
    required String infrastructureRoleArn,
    String? memory,
    List<ExpressGatewayServiceNetworkConfiguration>? networkConfigurations,
    required ExpressGatewayServicePrimaryContainer primaryContainer,
    String? region,
    List<ExpressGatewayServiceScalingTarget>? scalingTargets,
    String? serviceName,
    Map<String, String>? tags,
    String? taskRoleArn,
    ExpressGatewayServiceTimeouts? timeouts,
    bool? waitForSteadyState,
  })  : cluster = pulumi.Input.asOptionalInput<String>(cluster),
        cpu = pulumi.Input.asOptionalInput<String>(cpu),
        executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
        healthCheckPath = pulumi.Input.asOptionalInput<String>(healthCheckPath),
        infrastructureRoleArn =
            pulumi.Input.asInput<String>(infrastructureRoleArn),
        memory = pulumi.Input.asOptionalInput<String>(memory),
        networkConfigurations = pulumi.Input.asOptionalInput<
                List<ExpressGatewayServiceNetworkConfiguration>>(
            networkConfigurations),
        primaryContainer =
            pulumi.Input.asInput<ExpressGatewayServicePrimaryContainer>(
                primaryContainer),
        region = pulumi.Input.asOptionalInput<String>(region),
        scalingTargets = pulumi.Input.asOptionalInput<
            List<ExpressGatewayServiceScalingTarget>>(scalingTargets),
        serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        taskRoleArn = pulumi.Input.asOptionalInput<String>(taskRoleArn),
        timeouts = pulumi.Input.asOptionalInput<ExpressGatewayServiceTimeouts>(
            timeouts),
        waitForSteadyState =
            pulumi.Input.asOptionalInput<bool>(waitForSteadyState);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    map['executionRoleArn'] = executionRoleArn;
    final healthCheckPathValue = healthCheckPath;
    if (healthCheckPathValue != null) {
      map['healthCheckPath'] = healthCheckPathValue;
    }
    map['infrastructureRoleArn'] = infrastructureRoleArn;
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    final networkConfigurationsValue = networkConfigurations;
    if (networkConfigurationsValue != null) {
      map['networkConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<ExpressGatewayServiceNetworkConfiguration>,
              List<Map<String, dynamic>>>(
          networkConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              ExpressGatewayServiceNetworkConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['primaryContainer'] = pulumi.Input.mapInputValue<
        ExpressGatewayServicePrimaryContainer,
        Map<String, dynamic>>(primaryContainer, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingTargetsValue = scalingTargets;
    if (scalingTargetsValue != null) {
      map['scalingTargets'] = pulumi.Input.mapOptionalInputValue<
              List<ExpressGatewayServiceScalingTarget>,
              List<Map<String, dynamic>>>(
          scalingTargetsValue,
          (value) => pulumi.Input.encodeList<ExpressGatewayServiceScalingTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taskRoleArnValue = taskRoleArn;
    if (taskRoleArnValue != null) {
      map['taskRoleArn'] = taskRoleArnValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ExpressGatewayServiceTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final waitForSteadyStateValue = waitForSteadyState;
    if (waitForSteadyStateValue != null) {
      map['waitForSteadyState'] = waitForSteadyStateValue;
    }
    return map;
  }

  factory ExpressGatewayServiceArgs.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceArgs(
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      executionRoleArn: map['executionRoleArn'] as String,
      healthCheckPath: map['healthCheckPath'] == null
          ? null
          : map['healthCheckPath'] as String,
      infrastructureRoleArn: map['infrastructureRoleArn'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
      networkConfigurations: map['networkConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(
              map['networkConfigurations'],
              (value) => ExpressGatewayServiceNetworkConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      primaryContainer: ExpressGatewayServicePrimaryContainer.fromMap(
          (map['primaryContainer'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      scalingTargets: map['scalingTargets'] == null
          ? null
          : pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(
              map['scalingTargets'],
              (value) => ExpressGatewayServiceScalingTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskRoleArn:
          map['taskRoleArn'] == null ? null : map['taskRoleArn'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ExpressGatewayServiceTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      waitForSteadyState: map['waitForSteadyState'] == null
          ? null
          : map['waitForSteadyState'] as bool,
    );
  }
}
