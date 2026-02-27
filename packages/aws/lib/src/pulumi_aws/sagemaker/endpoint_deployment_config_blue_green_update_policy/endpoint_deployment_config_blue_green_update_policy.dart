// ignore_for_file: unused_element, unnecessary_cast

import '../endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration/endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration.dart';

class EndpointDeploymentConfigBlueGreenUpdatePolicy {
  final int? maximumExecutionTimeoutInSeconds;

  /// Additional waiting time in seconds after the completion of an endpoint deployment before terminating the old endpoint fleet. Default is `0`. Valid values are between `0` and `3600`.
  final int? terminationWaitInSeconds;

  /// Defines the traffic routing strategy to shift traffic from the old fleet to the new fleet during an endpoint deployment. See Traffic Routing Configuration.
  final EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration
      trafficRoutingConfiguration;

  EndpointDeploymentConfigBlueGreenUpdatePolicy({
    this.maximumExecutionTimeoutInSeconds,
    this.terminationWaitInSeconds,
    required this.trafficRoutingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumExecutionTimeoutInSecondsValue =
        maximumExecutionTimeoutInSeconds;
    if (maximumExecutionTimeoutInSecondsValue != null) {
      map['maximumExecutionTimeoutInSeconds'] =
          maximumExecutionTimeoutInSecondsValue;
    }
    final terminationWaitInSecondsValue = terminationWaitInSeconds;
    if (terminationWaitInSecondsValue != null) {
      map['terminationWaitInSeconds'] = terminationWaitInSecondsValue;
    }
    map['trafficRoutingConfiguration'] = trafficRoutingConfiguration.toMap();
    return map;
  }

  factory EndpointDeploymentConfigBlueGreenUpdatePolicy.fromMap(
      Map<String, dynamic> map) {
    return EndpointDeploymentConfigBlueGreenUpdatePolicy(
      maximumExecutionTimeoutInSeconds:
          map['maximumExecutionTimeoutInSeconds'] == null
              ? null
              : map['maximumExecutionTimeoutInSeconds'] as int,
      terminationWaitInSeconds: map['terminationWaitInSeconds'] == null
          ? null
          : map['terminationWaitInSeconds'] as int,
      trafficRoutingConfiguration:
          EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration
              .fromMap((map['trafficRoutingConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
