// ignore_for_file: unused_element, unnecessary_cast

import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resources_limits.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resources_requests.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources {
  /// Limits describes the maximum amount of compute resources allowed for use by the running container.
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits?
      limits;

  /// Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests?
      requests;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources].
  /// [limits] Limits describes the maximum amount of compute resources allowed for use by the running container.
  /// [requests] Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue.toMap();
    }
    final requestsValue = requests;
    if (requestsValue != null) {
      map['requests'] = requestsValue.toMap();
    }
    return map;
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources(
      limits: map['limits'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits
              .fromMap((map['limits'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests
              .fromMap((map['requests'] as Map).cast<String, dynamic>()),
    );
  }
}
