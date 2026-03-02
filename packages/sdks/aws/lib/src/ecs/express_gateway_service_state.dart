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
      cluster: map['cluster'] == null ? null : ((map['cluster'] as String).input()).input(),
      cpu: map['cpu'] == null ? null : ((map['cpu'] as String).input()).input(),
      currentDeployment: map['currentDeployment'] == null ? null : ((map['currentDeployment'] as String).input()).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : ((map['executionRoleArn'] as String).input()).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : ((map['healthCheckPath'] as String).input()).input(),
      infrastructureRoleArn: map['infrastructureRoleArn'] == null ? null : ((map['infrastructureRoleArn'] as String).input()).input(),
      ingressPaths: map['ingressPaths'] == null ? null : ((pulumi.Input.decodeList<ExpressGatewayServiceIngressPath>(map['ingressPaths']!, (value) => ExpressGatewayServiceIngressPath.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      memory: map['memory'] == null ? null : ((map['memory'] as String).input()).input(),
      networkConfigurations: map['networkConfigurations'] == null ? null : ((pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(map['networkConfigurations']!, (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      primaryContainer: map['primaryContainer'] == null ? null : ((ExpressGatewayServicePrimaryContainer.fromMap((map['primaryContainer']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scalingTargets: map['scalingTargets'] == null ? null : ((pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(map['scalingTargets']!, (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      serviceArn: map['serviceArn'] == null ? null : ((map['serviceArn'] as String).input()).input(),
      serviceName: map['serviceName'] == null ? null : ((map['serviceName'] as String).input()).input(),
      serviceRevisionArn: map['serviceRevisionArn'] == null ? null : ((map['serviceRevisionArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      taskRoleArn: map['taskRoleArn'] == null ? null : ((map['taskRoleArn'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ExpressGatewayServiceTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      waitForSteadyState: map['waitForSteadyState'] == null ? null : ((map['waitForSteadyState'] as bool).input()).input(),
    );
  }
}

