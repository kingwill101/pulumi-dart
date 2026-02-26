// ignore_for_file: unused_element, unnecessary_cast

import '../feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources_limits/feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources_limits.dart';
import '../feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources_requests/feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources_requests.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources {
  /// Limits describes the maximum amount of compute resources allowed for use by the running container.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits?
      limits;

  /// Requests describes the amount of compute resources reserved for the container by the kube-scheduler.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests?
      requests;

  FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources({
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

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap(
      Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources(
      limits: map['limits'] == null
          ? null
          : FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesLimits
              .fromMap((map['limits'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null
          ? null
          : FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResourcesRequests
              .fromMap((map['requests'] as Map).cast<String, dynamic>()),
    );
  }
}
