// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_config_minimum_healthy_hosts/deployment_config_minimum_healthy_hosts.dart';
import '../deployment_config_traffic_routing_config/deployment_config_traffic_routing_config.dart';
import '../deployment_config_zonal_config/deployment_config_zonal_config.dart';

/// The set of arguments for DeploymentConfig.
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

  DeploymentConfigArgs({
    this.computePlatform,
    this.deploymentConfigName,
    this.minimumHealthyHosts,
    this.region,
    this.trafficRoutingConfig,
    this.zonalConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computePlatformValue = computePlatform;
    if (computePlatformValue != null) {
      map['computePlatform'] = computePlatformValue;
    }
    final deploymentConfigNameValue = deploymentConfigName;
    if (deploymentConfigNameValue != null) {
      map['deploymentConfigName'] = deploymentConfigNameValue;
    }
    final minimumHealthyHostsValue = minimumHealthyHosts;
    if (minimumHealthyHostsValue != null) {
      map['minimumHealthyHosts'] = pulumi.Input.mapOptionalInputValue<
              DeploymentConfigMinimumHealthyHosts, Map<String, dynamic>>(
          minimumHealthyHostsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trafficRoutingConfigValue = trafficRoutingConfig;
    if (trafficRoutingConfigValue != null) {
      map['trafficRoutingConfig'] = pulumi.Input.mapOptionalInputValue<
              DeploymentConfigTrafficRoutingConfig, Map<String, dynamic>>(
          trafficRoutingConfigValue, (value) => value.toMap());
    }
    final zonalConfigValue = zonalConfig;
    if (zonalConfigValue != null) {
      map['zonalConfig'] = pulumi.Input.mapOptionalInputValue<
          DeploymentConfigZonalConfig,
          Map<String, dynamic>>(zonalConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentConfigArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigArgs(
      computePlatform:
          pulumi.Input.asOptionalInput<String>(map['computePlatform']),
      deploymentConfigName:
          pulumi.Input.asOptionalInput<String>(map['deploymentConfigName']),
      minimumHealthyHosts:
          pulumi.Input.asOptionalInput<DeploymentConfigMinimumHealthyHosts>(
              map['minimumHealthyHosts']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      trafficRoutingConfig:
          pulumi.Input.asOptionalInput<DeploymentConfigTrafficRoutingConfig>(
              map['trafficRoutingConfig']),
      zonalConfig: pulumi.Input.asOptionalInput<DeploymentConfigZonalConfig>(
          map['zonalConfig']),
    );
  }
}
