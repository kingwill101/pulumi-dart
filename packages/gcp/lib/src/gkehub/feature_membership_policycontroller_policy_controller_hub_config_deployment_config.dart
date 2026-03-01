// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config_container_resources.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig {
  /// The name of the component. One of `admission` `audit` or `mutation`
  final String componentName;

  /// Container resource requirements.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources?
  containerResources;

  /// Pod affinity configuration. Possible values: AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY
  final String? podAffinity;

  /// Pod tolerations of node taints.
  final List<
    FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration
  >?
  podTolerations;

  /// Pod replica count.
  final int? replicaCount;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig].
  /// [componentName] The name of the component. One of `admission` `audit` or `mutation`
  /// [containerResources] Container resource requirements.
  /// [podAffinity] Pod affinity configuration. Possible values: AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY
  /// [podTolerations] Pod tolerations of node taints.
  /// [replicaCount] Pod replica count.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig({
    required this.componentName,
    this.containerResources,
    this.podAffinity,
    this.podTolerations,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'containerResources': ?containerResources == null
          ? null
          : containerResources!.toMap(),
      'podAffinity': ?podAffinity,
      'podTolerations': ?podTolerations == null
          ? null
          : pulumi.Input.encodeList<
              FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration,
              Map<String, dynamic>
            >(podTolerations!, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig(
      componentName: map['componentName'] as String,
      containerResources: map['containerResources'] == null
          ? null
          : FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap(
              (map['containerResources'] as Map).cast<String, dynamic>(),
            ),
      podAffinity: map['podAffinity'] == null
          ? null
          : map['podAffinity'] as String,
      podTolerations: map['podTolerations'] == null
          ? null
          : pulumi.Input.decodeList<
              FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration
            >(
              map['podTolerations'],
              (value) =>
                  FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      replicaCount: map['replicaCount'] == null
          ? null
          : map['replicaCount'] as int,
    );
  }
}
