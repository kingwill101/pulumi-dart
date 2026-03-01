// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_eks_resource_scaling_config_eks_cluster.dart';
import 'plan_workflow_step_eks_resource_scaling_config_kubernetes_resource_type.dart';
import 'plan_workflow_step_eks_resource_scaling_config_scaling_resource.dart';
import 'plan_workflow_step_eks_resource_scaling_config_ungraceful.dart';

class PlanWorkflowStepEksResourceScalingConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  final String capacityMonitoringApproach;
  /// List of EKS clusters. See EKS Clusters below.
  final List<PlanWorkflowStepEksResourceScalingConfigEksCluster>? eksClusters;
  /// Kubernetes resource type. See Kubernetes Resource Type below.
  final List<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>? kubernetesResourceTypes;
  /// List of scaling resources. See Scaling Resources below.
  final List<PlanWorkflowStepEksResourceScalingConfigScalingResource>? scalingResources;
  /// Target capacity percentage.
  final int targetPercent;
  /// Timeout in minutes.
  final int? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful Capacity below.
  final List<PlanWorkflowStepEksResourceScalingConfigUngraceful>? ungracefuls;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfig].
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  /// [eksClusters] List of EKS clusters. See EKS Clusters below.
  /// [kubernetesResourceTypes] Kubernetes resource type. See Kubernetes Resource Type below.
  /// [scalingResources] List of scaling resources. See Scaling Resources below.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See Ungraceful Capacity below.
  PlanWorkflowStepEksResourceScalingConfig({
    required this.capacityMonitoringApproach,
    this.eksClusters,
    this.kubernetesResourceTypes,
    this.scalingResources,
    required this.targetPercent,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityMonitoringApproach': capacityMonitoringApproach,
      'eksClusters': ?eksClusters == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigEksCluster, Map<String, dynamic>>(eksClusters!, (value) => value.toMap()),
      'kubernetesResourceTypes': ?kubernetesResourceTypes == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType, Map<String, dynamic>>(kubernetesResourceTypes!, (value) => value.toMap()),
      'scalingResources': ?scalingResources == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigScalingResource, Map<String, dynamic>>(scalingResources!, (value) => value.toMap()),
      'targetPercent': targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?ungracefuls == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigUngraceful, Map<String, dynamic>>(ungracefuls!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepEksResourceScalingConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfig(
      capacityMonitoringApproach: map['capacityMonitoringApproach'] as String,
      eksClusters: map['eksClusters'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigEksCluster>(map['eksClusters'], (value) => PlanWorkflowStepEksResourceScalingConfigEksCluster.fromMap((value as Map).cast<String, dynamic>())),
      kubernetesResourceTypes: map['kubernetesResourceTypes'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>(map['kubernetesResourceTypes'], (value) => PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType.fromMap((value as Map).cast<String, dynamic>())),
      scalingResources: map['scalingResources'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigScalingResource>(map['scalingResources'], (value) => PlanWorkflowStepEksResourceScalingConfigScalingResource.fromMap((value as Map).cast<String, dynamic>())),
      targetPercent: map['targetPercent'] as int,
      timeoutMinutes: map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigUngraceful>(map['ungracefuls'], (value) => PlanWorkflowStepEksResourceScalingConfigUngraceful.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

