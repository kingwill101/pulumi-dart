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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? computePlatform,
    pulumi.Output<String>? deploymentConfigId,
    pulumi.Output<String>? deploymentConfigName,
    pulumi.Output<DeploymentConfigMinimumHealthyHosts>? minimumHealthyHosts,
    pulumi.Output<String>? region,
    pulumi.Output<DeploymentConfigTrafficRoutingConfig>? trafficRoutingConfig,
    pulumi.Output<DeploymentConfigZonalConfig>? zonalConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      computePlatform = pulumi.Input.asOptionalInput<String>(computePlatform),
      deploymentConfigId = pulumi.Input.asOptionalInput<String>(deploymentConfigId),
      deploymentConfigName = pulumi.Input.asOptionalInput<String>(deploymentConfigName),
      minimumHealthyHosts = pulumi.Input.asOptionalInput<DeploymentConfigMinimumHealthyHosts>(minimumHealthyHosts),
      region = pulumi.Input.asOptionalInput<String>(region),
      trafficRoutingConfig = pulumi.Input.asOptionalInput<DeploymentConfigTrafficRoutingConfig>(trafficRoutingConfig),
      zonalConfig = pulumi.Input.asOptionalInput<DeploymentConfigZonalConfig>(zonalConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      computePlatform: map['computePlatform'] == null ? null : pulumi.Output.create<String>(map['computePlatform'] as String),
      deploymentConfigId: map['deploymentConfigId'] == null ? null : pulumi.Output.create<String>(map['deploymentConfigId'] as String),
      deploymentConfigName: map['deploymentConfigName'] == null ? null : pulumi.Output.create<String>(map['deploymentConfigName'] as String),
      minimumHealthyHosts: map['minimumHealthyHosts'] == null ? null : pulumi.Output.create<DeploymentConfigMinimumHealthyHosts>(DeploymentConfigMinimumHealthyHosts.fromMap((map['minimumHealthyHosts'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      trafficRoutingConfig: map['trafficRoutingConfig'] == null ? null : pulumi.Output.create<DeploymentConfigTrafficRoutingConfig>(DeploymentConfigTrafficRoutingConfig.fromMap((map['trafficRoutingConfig'] as Map).cast<String, dynamic>())),
      zonalConfig: map['zonalConfig'] == null ? null : pulumi.Output.create<DeploymentConfigZonalConfig>(DeploymentConfigZonalConfig.fromMap((map['zonalConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

