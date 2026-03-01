// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_container_resources.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config_pod_toleration.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig {
  /// The identifier for this object. Format specified above.
  final String component;
  /// Container resource requirements.
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources? containerResources;
  /// Pod affinity configuration.
  /// Possible values are: `AFFINITY_UNSPECIFIED`, `NO_AFFINITY`, `ANTI_AFFINITY`.
  final String? podAffinity;
  /// Pod tolerations of node taints.
  /// Structure is documented below.
  final List<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>? podTolerations;
  /// Pod replica count.
  final int? replicaCount;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig].
  /// [component] The identifier for this object. Format specified above.
  /// [containerResources] Container resource requirements.
  /// [podAffinity] Pod affinity configuration.
  /// [podTolerations] Pod tolerations of node taints.
  /// [replicaCount] Pod replica count.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig({
    required this.component,
    this.containerResources,
    this.podAffinity,
    this.podTolerations,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': component,
      'containerResources': ?containerResources == null ? null : containerResources!.toMap(),
      'podAffinity': ?podAffinity,
      'podTolerations': ?podTolerations == null ? null : pulumi.Input.encodeList<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration, Map<String, dynamic>>(podTolerations!, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig(
      component: map['component'] as String,
      containerResources: map['containerResources'] == null ? null : FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigContainerResources.fromMap((map['containerResources'] as Map).cast<String, dynamic>()),
      podAffinity: map['podAffinity'] == null ? null : map['podAffinity'] as String,
      podTolerations: map['podTolerations'] == null ? null : pulumi.Input.decodeList<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration>(map['podTolerations'], (value) => FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap((value as Map).cast<String, dynamic>())),
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
    );
  }
}

