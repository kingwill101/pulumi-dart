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
  final pulumi.Input<DeploymentConfigTrafficRoutingConfig>?
  trafficRoutingConfig;

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
    this.computePlatform,
    this.deploymentConfigName,
    this.minimumHealthyHosts,
    this.region,
    this.trafficRoutingConfig,
    this.zonalConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computePlatform': ?computePlatform,
      'deploymentConfigName': ?deploymentConfigName,
      'minimumHealthyHosts':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentConfigMinimumHealthyHosts,
            Map<String, dynamic>
          >(minimumHealthyHosts, (value) => value.toMap()),
      'region': ?region,
      'trafficRoutingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentConfigTrafficRoutingConfig,
            Map<String, dynamic>
          >(trafficRoutingConfig, (value) => value.toMap()),
      'zonalConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentConfigZonalConfig,
            Map<String, dynamic>
          >(zonalConfig, (value) => value.toMap()),
    };
  }

  factory DeploymentConfigArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigArgs(
      computePlatform: (() {
        final guardedValue = map['computePlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deploymentConfigName: (() {
        final guardedValue = map['deploymentConfigName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minimumHealthyHosts: (() {
        final guardedValue = map['minimumHealthyHosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentConfigMinimumHealthyHosts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficRoutingConfig: (() {
        final guardedValue = map['trafficRoutingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentConfigTrafficRoutingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zonalConfig: (() {
        final guardedValue = map['zonalConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentConfigZonalConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
