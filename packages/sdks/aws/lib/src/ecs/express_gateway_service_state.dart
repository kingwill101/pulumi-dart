// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_gateway_service_ingress_path.dart';
import 'express_gateway_service_network_configuration.dart';
import 'express_gateway_service_primary_container.dart';
import 'express_gateway_service_scaling_target.dart';
import 'express_gateway_service_timeouts.dart';

/// Input properties used for looking up and filtering ExpressGatewayService resources.
class ExpressGatewayServiceState {
  /// Name or ARN of the ECS cluster. Defaults to `default`.
  final pulumi.Input<String>? cluster;
  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  final pulumi.Input<String>? cpu;
  /// ARN of the current deployment.
  final pulumi.Input<String>? currentDeployment;
  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  final pulumi.Input<String>? executionRoleArn;
  /// Path for health check requests. Defaults to `/ping`.
  final pulumi.Input<String>? healthCheckPath;
  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? infrastructureRoleArn;
  /// List of ingress paths with access type and endpoint information.
  final pulumi.Input<List<ExpressGatewayServiceIngressPath>>? ingressPaths;
  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  final pulumi.Input<String>? memory;
  final pulumi.Input<List<ExpressGatewayServiceNetworkConfiguration>>? networkConfigurations;
  final pulumi.Input<ExpressGatewayServicePrimaryContainer>? primaryContainer;
  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  final pulumi.Input<String>? region;
  final pulumi.Input<List<ExpressGatewayServiceScalingTarget>>? scalingTargets;
  /// ARN of the Express Gateway Service.
  final pulumi.Input<String>? serviceArn;
  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceName;
  /// ARN of the service revision.
  final pulumi.Input<String>? serviceRevisionArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String>? taskRoleArn;
  final pulumi.Input<ExpressGatewayServiceTimeouts>? timeouts;
  /// Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  final pulumi.Input<bool>? waitForSteadyState;

  /// Creates a new [ExpressGatewayServiceState].
  /// [cluster] Name or ARN of the ECS cluster. Defaults to `default`.
  /// [cpu] Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  /// [currentDeployment] ARN of the current deployment.
  /// [executionRoleArn] ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  /// [healthCheckPath] Path for health check requests. Defaults to `/ping`.
  /// [infrastructureRoleArn] ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  /// [ingressPaths] List of ingress paths with access type and endpoint information.
  /// [memory] Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  /// [networkConfigurations] Optional.
  /// [primaryContainer] Optional.
  /// [region] AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  /// [scalingTargets] Optional.
  /// [serviceArn] ARN of the Express Gateway Service.
  /// [serviceName] Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  /// [serviceRevisionArn] ARN of the service revision.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taskRoleArn] ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [timeouts] Optional.
  /// [waitForSteadyState] Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  ExpressGatewayServiceState({
    this.cluster,
    this.cpu,
    this.currentDeployment,
    this.executionRoleArn,
    this.healthCheckPath,
    this.infrastructureRoleArn,
    this.ingressPaths,
    this.memory,
    this.networkConfigurations,
    this.primaryContainer,
    this.region,
    this.scalingTargets,
    this.serviceArn,
    this.serviceName,
    this.serviceRevisionArn,
    this.tags,
    this.tagsAll,
    this.taskRoleArn,
    this.timeouts,
    this.waitForSteadyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'cpu': ?cpu,
      'currentDeployment': ?currentDeployment,
      'executionRoleArn': ?executionRoleArn,
      'healthCheckPath': ?healthCheckPath,
      'infrastructureRoleArn': ?infrastructureRoleArn,
      'ingressPaths': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServiceIngressPath>, List<Map<String, dynamic>>>(ingressPaths, (value) => pulumi.Input.encodeList<ExpressGatewayServiceIngressPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': ?memory,
      'networkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServiceNetworkConfiguration>, List<Map<String, dynamic>>>(networkConfigurations, (value) => pulumi.Input.encodeList<ExpressGatewayServiceNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryContainer': ?pulumi.Input.mapOptionalInputValue<ExpressGatewayServicePrimaryContainer, Map<String, dynamic>>(primaryContainer, (value) => value.toMap()),
      'region': ?region,
      'scalingTargets': ?pulumi.Input.mapOptionalInputValue<List<ExpressGatewayServiceScalingTarget>, List<Map<String, dynamic>>>(scalingTargets, (value) => pulumi.Input.encodeList<ExpressGatewayServiceScalingTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceArn': ?serviceArn,
      'serviceName': ?serviceName,
      'serviceRevisionArn': ?serviceRevisionArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taskRoleArn': ?taskRoleArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExpressGatewayServiceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForSteadyState': ?waitForSteadyState,
    };
  }

  factory ExpressGatewayServiceState.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceState(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentDeployment: (() { final guardedValue = map['currentDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureRoleArn: (() { final guardedValue = map['infrastructureRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressPaths: (() { final guardedValue = map['ingressPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressGatewayServiceIngressPath>(guardedValue, (value) => ExpressGatewayServiceIngressPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfigurations: (() { final guardedValue = map['networkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(guardedValue, (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primaryContainer: (() { final guardedValue = map['primaryContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressGatewayServicePrimaryContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingTargets: (() { final guardedValue = map['scalingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(guardedValue, (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRevisionArn: (() { final guardedValue = map['serviceRevisionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressGatewayServiceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForSteadyState: (() { final guardedValue = map['waitForSteadyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

