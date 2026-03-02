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
  DeploymentConfigState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      computePlatform: map['computePlatform'] == null ? null : (map['computePlatform'] as String).input(),
      deploymentConfigId: map['deploymentConfigId'] == null ? null : (map['deploymentConfigId'] as String).input(),
      deploymentConfigName: map['deploymentConfigName'] == null ? null : (map['deploymentConfigName'] as String).input(),
      minimumHealthyHosts: map['minimumHealthyHosts'] == null ? null : (DeploymentConfigMinimumHealthyHosts.fromMap((map['minimumHealthyHosts'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      trafficRoutingConfig: map['trafficRoutingConfig'] == null ? null : (DeploymentConfigTrafficRoutingConfig.fromMap((map['trafficRoutingConfig'] as Map).cast<String, dynamic>())).input(),
      zonalConfig: map['zonalConfig'] == null ? null : (DeploymentConfigZonalConfig.fromMap((map['zonalConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

