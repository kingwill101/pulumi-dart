// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_config_minimum_healthy_hosts/deployment_config_minimum_healthy_hosts.dart';
import '../deployment_config_traffic_routing_config/deployment_config_traffic_routing_config.dart';
import '../deployment_config_zonal_config/deployment_config_zonal_config.dart';

/// The set of arguments for DeploymentConfig.
class DeploymentConfigArgs {
  /// The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  final Input<String>? computePlatform;

  /// The name of the deployment config.
  final Input<String>? deploymentConfigName;

  /// A<span pulumi-lang-nodejs=" minimumHealthyHosts " pulumi-lang-dotnet=" MinimumHealthyHosts " pulumi-lang-go=" minimumHealthyHosts " pulumi-lang-python=" minimum_healthy_hosts " pulumi-lang-yaml=" minimumHealthyHosts " pulumi-lang-java=" minimumHealthyHosts "> minimum_healthy_hosts </span>block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  final Input<DeploymentConfigMinimumHealthyHosts>? minimumHealthyHosts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A<span pulumi-lang-nodejs=" trafficRoutingConfig " pulumi-lang-dotnet=" TrafficRoutingConfig " pulumi-lang-go=" trafficRoutingConfig " pulumi-lang-python=" traffic_routing_config " pulumi-lang-yaml=" trafficRoutingConfig " pulumi-lang-java=" trafficRoutingConfig "> traffic_routing_config </span>block. Traffic Routing Config is documented below.
  final Input<DeploymentConfigTrafficRoutingConfig>? trafficRoutingConfig;

  /// A<span pulumi-lang-nodejs=" zonalConfig " pulumi-lang-dotnet=" ZonalConfig " pulumi-lang-go=" zonalConfig " pulumi-lang-python=" zonal_config " pulumi-lang-yaml=" zonalConfig " pulumi-lang-java=" zonalConfig "> zonal_config </span>block. Zonal Config is documented below.
  final Input<DeploymentConfigZonalConfig>? zonalConfig;

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
      map['minimumHealthyHosts'] = Input.mapOptionalInputValue<
              DeploymentConfigMinimumHealthyHosts, Map<String, dynamic>>(
          minimumHealthyHostsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trafficRoutingConfigValue = trafficRoutingConfig;
    if (trafficRoutingConfigValue != null) {
      map['trafficRoutingConfig'] = Input.mapOptionalInputValue<
              DeploymentConfigTrafficRoutingConfig, Map<String, dynamic>>(
          trafficRoutingConfigValue, (value) => value.toMap());
    }
    final zonalConfigValue = zonalConfig;
    if (zonalConfigValue != null) {
      map['zonalConfig'] = Input.mapOptionalInputValue<
          DeploymentConfigZonalConfig,
          Map<String, dynamic>>(zonalConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentConfigArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigArgs(
      computePlatform: Input.asOptionalInput<String>(map['computePlatform']),
      deploymentConfigName:
          Input.asOptionalInput<String>(map['deploymentConfigName']),
      minimumHealthyHosts:
          Input.asOptionalInput<DeploymentConfigMinimumHealthyHosts>(
              map['minimumHealthyHosts']),
      region: Input.asOptionalInput<String>(map['region']),
      trafficRoutingConfig:
          Input.asOptionalInput<DeploymentConfigTrafficRoutingConfig>(
              map['trafficRoutingConfig']),
      zonalConfig: Input.asOptionalInput<DeploymentConfigZonalConfig>(
          map['zonalConfig']),
    );
  }
}
