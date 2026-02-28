// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_config_minimum_healthy_hosts.dart';
import 'deployment_config_traffic_routing_config.dart';
import 'deployment_config_zonal_config.dart';

/// {@template pulumi_codedeploy_deployment_config_deployment_config_args_doc}
/// The set of arguments for DeploymentConfig.
/// {@endtemplate}
/// {@macro pulumi_codedeploy_deployment_config_deployment_config_args_doc}
class DeploymentConfigArgs {
  /// The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  final pulumi.Input<String>? computePlatform;
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

  /// Creates a new [DeploymentConfigArgs].
  /// [computePlatform] The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  /// [deploymentConfigName] The name of the deployment config.
  /// [minimumHealthyHosts] A minimum_healthy_hosts block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trafficRoutingConfig] A traffic_routing_config block. Traffic Routing Config is documented below.
  /// [zonalConfig] A zonal_config block. Zonal Config is documented below.
  DeploymentConfigArgs({
    String? computePlatform,
    String? deploymentConfigName,
    DeploymentConfigMinimumHealthyHosts? minimumHealthyHosts,
    String? region,
    DeploymentConfigTrafficRoutingConfig? trafficRoutingConfig,
    DeploymentConfigZonalConfig? zonalConfig,
  }) :
      computePlatform = pulumi.Input.asOptionalInput<String>(computePlatform),
      deploymentConfigName = pulumi.Input.asOptionalInput<String>(deploymentConfigName),
      minimumHealthyHosts = pulumi.Input.asOptionalInput<DeploymentConfigMinimumHealthyHosts>(minimumHealthyHosts),
      region = pulumi.Input.asOptionalInput<String>(region),
      trafficRoutingConfig = pulumi.Input.asOptionalInput<DeploymentConfigTrafficRoutingConfig>(trafficRoutingConfig),
      zonalConfig = pulumi.Input.asOptionalInput<DeploymentConfigZonalConfig>(zonalConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computePlatform': ?computePlatform,
      'deploymentConfigName': ?deploymentConfigName,
      'minimumHealthyHosts': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigMinimumHealthyHosts, Map<String, dynamic>>(minimumHealthyHosts, (value) => value.toMap()),
      'region': ?region,
      'trafficRoutingConfig': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigTrafficRoutingConfig, Map<String, dynamic>>(trafficRoutingConfig, (value) => value.toMap()),
      'zonalConfig': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigZonalConfig, Map<String, dynamic>>(zonalConfig, (value) => value.toMap()),
    };
  }

  factory DeploymentConfigArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigArgs(
      computePlatform: map['computePlatform'] == null ? null : map['computePlatform'] as String,
      deploymentConfigName: map['deploymentConfigName'] == null ? null : map['deploymentConfigName'] as String,
      minimumHealthyHosts: map['minimumHealthyHosts'] == null ? null : DeploymentConfigMinimumHealthyHosts.fromMap((map['minimumHealthyHosts'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      trafficRoutingConfig: map['trafficRoutingConfig'] == null ? null : DeploymentConfigTrafficRoutingConfig.fromMap((map['trafficRoutingConfig'] as Map).cast<String, dynamic>()),
      zonalConfig: map['zonalConfig'] == null ? null : DeploymentConfigZonalConfig.fromMap((map['zonalConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

