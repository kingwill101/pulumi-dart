// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_config_minimum_healthy_hosts.dart';
import 'deployment_config_traffic_routing_config.dart';
import 'deployment_config_zonal_config.dart';

/// Input properties used for looking up and filtering DeploymentConfig resources.
class DeploymentConfigState {
  /// The ARN of the deployment config.
  final pulumi.Input<String>? arn;
  /// The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  final pulumi.Input<String>? computePlatform;
  /// The AWS Assigned deployment config id
  final pulumi.Input<String>? deploymentConfigId;
  /// The name of the deployment config.
  final pulumi.Input<String>? deploymentConfigName;
  /// A minimum_healthy_hosts block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  final pulumi.Input<DeploymentConfigMinimumHealthyHosts>? minimumHealthyHosts;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A traffic_routing_config block. Traffic Routing Config is documented below.
  final pulumi.Input<DeploymentConfigTrafficRoutingConfig>? trafficRoutingConfig;
  /// A zonal_config block. Zonal Config is documented below.
  final pulumi.Input<DeploymentConfigZonalConfig>? zonalConfig;

  /// Creates a new [DeploymentConfigState].
  /// [arn] The ARN of the deployment config.
  /// [computePlatform] The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  /// [deploymentConfigId] The AWS Assigned deployment config id
  /// [deploymentConfigName] The name of the deployment config.
  /// [minimumHealthyHosts] A minimum_healthy_hosts block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trafficRoutingConfig] A traffic_routing_config block. Traffic Routing Config is documented below.
  /// [zonalConfig] A zonal_config block. Zonal Config is documented below.
  const DeploymentConfigState({
    this.arn,
    this.computePlatform,
    this.deploymentConfigId,
    this.deploymentConfigName,
    this.minimumHealthyHosts,
    this.region,
    this.trafficRoutingConfig,
    this.zonalConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computePlatform': ?computePlatform,
      'deploymentConfigId': ?deploymentConfigId,
      'deploymentConfigName': ?deploymentConfigName,
      'minimumHealthyHosts': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigMinimumHealthyHosts, Map<String, dynamic>>(minimumHealthyHosts, (value) => value.toMap()),
      'region': ?region,
      'trafficRoutingConfig': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigTrafficRoutingConfig, Map<String, dynamic>>(trafficRoutingConfig, (value) => value.toMap()),
      'zonalConfig': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigZonalConfig, Map<String, dynamic>>(zonalConfig, (value) => value.toMap()),
    };
  }

  factory DeploymentConfigState.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computePlatform: (() { final guardedValue = map['computePlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfigId: (() { final guardedValue = map['deploymentConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfigName: (() { final guardedValue = map['deploymentConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumHealthyHosts: (() { final guardedValue = map['minimumHealthyHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentConfigMinimumHealthyHosts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficRoutingConfig: (() { final guardedValue = map['trafficRoutingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentConfigTrafficRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zonalConfig: (() { final guardedValue = map['zonalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentConfigZonalConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

