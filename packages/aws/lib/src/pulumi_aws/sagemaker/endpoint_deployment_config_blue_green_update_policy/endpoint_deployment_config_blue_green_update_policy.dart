// ignore_for_file: unused_element, unnecessary_cast

import '../endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration/endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration.dart';

class EndpointDeploymentConfigBlueGreenUpdatePolicy {
  final int? maximumExecutionTimeoutInSeconds;

  /// Additional waiting time in seconds after the completion of an endpoint deployment before terminating the old endpoint fleet. Default is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Valid values are between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>.
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
