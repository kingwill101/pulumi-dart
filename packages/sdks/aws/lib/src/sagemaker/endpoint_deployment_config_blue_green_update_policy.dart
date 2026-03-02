// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration.dart';

class EndpointDeploymentConfigBlueGreenUpdatePolicy {
  final pulumi.Input<int>? maximumExecutionTimeoutInSeconds;
  /// Additional waiting time in seconds after the completion of an endpoint deployment before terminating the old endpoint fleet. Default is `0`. Valid values are between `0` and `3600`.
  final pulumi.Input<int>? terminationWaitInSeconds;
  /// Defines the traffic routing strategy to shift traffic from the old fleet to the new fleet during an endpoint deployment. See Traffic Routing Configuration.
  final pulumi.Input<EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration> trafficRoutingConfiguration;

  /// Creates a new [EndpointDeploymentConfigBlueGreenUpdatePolicy].
  /// [maximumExecutionTimeoutInSeconds] Optional.
  /// [terminationWaitInSeconds] Additional waiting time in seconds after the completion of an endpoint deployment before terminating the old endpoint fleet. Default is `0`. Valid values are between `0` and `3600`.
  /// [trafficRoutingConfiguration] Defines the traffic routing strategy to shift traffic from the old fleet to the new fleet during an endpoint deployment. See Traffic Routing Configuration.
  EndpointDeploymentConfigBlueGreenUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    this.terminationWaitInSeconds,
    required this.trafficRoutingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumExecutionTimeoutInSeconds': ?maximumExecutionTimeoutInSeconds,
      'terminationWaitInSeconds': ?terminationWaitInSeconds,
      'trafficRoutingConfiguration': pulumi.Input.mapInputValue<EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration, Map<String, dynamic>>(trafficRoutingConfiguration, (value) => value.toMap()),
    };
  }

  factory EndpointDeploymentConfigBlueGreenUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentConfigBlueGreenUpdatePolicy(
      maximumExecutionTimeoutInSeconds: map['maximumExecutionTimeoutInSeconds'] == null ? null : ((map['maximumExecutionTimeoutInSeconds'] as int).input()).input(),
      terminationWaitInSeconds: map['terminationWaitInSeconds'] == null ? null : ((map['terminationWaitInSeconds'] as int).input()).input(),
      trafficRoutingConfiguration: (EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration.fromMap((map['trafficRoutingConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

