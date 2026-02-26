// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resource/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resource.dart';
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig {
  final String component;

  /// Container resource requirements.
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource>
      containerResources;

  /// Pod affinity configuration. Possible values: ["AFFINITY_UNSPECIFIED", "NO_AFFINITY", "ANTI_AFFINITY"]
  final String podAffinity;

  /// Pod tolerations of node taints.
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>
      podTolerations;

  /// Pod replica count.
  final int replicaCount;

  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig({
    required this.component,
    required this.containerResources,
    required this.podAffinity,
    required this.podTolerations,
    required this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['component'] = component;
    map['containerResources'] = Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource,
        Map<String, dynamic>>(containerResources, (value) => value.toMap());
    map['podAffinity'] = podAffinity;
    map['podTolerations'] = Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration,
        Map<String, dynamic>>(podTolerations, (value) => value.toMap());
    map['replicaCount'] = replicaCount;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig(
      component: map['component'] as String,
      containerResources: Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource>(
          map['containerResources'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResource
                  .fromMap((value as Map).cast<String, dynamic>())),
      podAffinity: map['podAffinity'] as String,
      podTolerations: Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>(
          map['podTolerations'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration
                  .fromMap((value as Map).cast<String, dynamic>())),
      replicaCount: map['replicaCount'] as int,
    );
  }
}
