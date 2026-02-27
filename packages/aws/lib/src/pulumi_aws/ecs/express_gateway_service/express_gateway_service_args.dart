// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../express_gateway_service_network_configuration/express_gateway_service_network_configuration.dart';
import '../express_gateway_service_primary_container/express_gateway_service_primary_container.dart';
import '../express_gateway_service_scaling_target/express_gateway_service_scaling_target.dart';
import '../express_gateway_service_timeouts/express_gateway_service_timeouts.dart';

/// The set of arguments for ExpressGatewayService.
class ExpressGatewayServiceArgs {
  /// Name or ARN of the ECS cluster. Defaults to `default`.
  final Input<String>? cluster;

  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  final Input<String>? cpu;

  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  final Input<String> executionRoleArn;

  /// Path for health check requests. Defaults to `/ping`.
  final Input<String>? healthCheckPath;

  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final Input<String> infrastructureRoleArn;

  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  final Input<String>? memory;
  final Input<List<ExpressGatewayServiceNetworkConfiguration>>?
      networkConfigurations;
  final Input<ExpressGatewayServicePrimaryContainer> primaryContainer;

  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  final Input<String>? region;
  final Input<List<ExpressGatewayServiceScalingTarget>>? scalingTargets;

  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  final Input<String>? serviceName;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final Input<String>? taskRoleArn;
  final Input<ExpressGatewayServiceTimeouts>? timeouts;

  /// Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  final Input<bool>? waitForSteadyState;

  ExpressGatewayServiceArgs({
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
      map['networkConfigurations'] = Input.mapOptionalInputValue<
              List<ExpressGatewayServiceNetworkConfiguration>,
              List<Map<String, dynamic>>>(
          networkConfigurationsValue,
          (value) => Input.encodeList<ExpressGatewayServiceNetworkConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['primaryContainer'] = Input.mapInputValue<
        ExpressGatewayServicePrimaryContainer,
        Map<String, dynamic>>(primaryContainer, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingTargetsValue = scalingTargets;
    if (scalingTargetsValue != null) {
      map['scalingTargets'] = Input.mapOptionalInputValue<
              List<ExpressGatewayServiceScalingTarget>,
              List<Map<String, dynamic>>>(
          scalingTargetsValue,
          (value) => Input.encodeList<ExpressGatewayServiceScalingTarget,
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
      map['timeouts'] = Input.mapOptionalInputValue<
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
      cluster: Input.asOptionalInput<String>(map['cluster']),
      cpu: Input.asOptionalInput<String>(map['cpu']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      healthCheckPath: Input.asOptionalInput<String>(map['healthCheckPath']),
      infrastructureRoleArn:
          Input.asInput<String>(map['infrastructureRoleArn']),
      memory: Input.asOptionalInput<String>(map['memory']),
      networkConfigurations: Input.asOptionalInput<
              List<ExpressGatewayServiceNetworkConfiguration>>(
          map['networkConfigurations']),
      primaryContainer: Input.asInput<ExpressGatewayServicePrimaryContainer>(
          map['primaryContainer']),
      region: Input.asOptionalInput<String>(map['region']),
      scalingTargets:
          Input.asOptionalInput<List<ExpressGatewayServiceScalingTarget>>(
              map['scalingTargets']),
      serviceName: Input.asOptionalInput<String>(map['serviceName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskRoleArn: Input.asOptionalInput<String>(map['taskRoleArn']),
      timeouts:
          Input.asOptionalInput<ExpressGatewayServiceTimeouts>(map['timeouts']),
      waitForSteadyState:
          Input.asOptionalInput<bool>(map['waitForSteadyState']),
    );
  }
}
