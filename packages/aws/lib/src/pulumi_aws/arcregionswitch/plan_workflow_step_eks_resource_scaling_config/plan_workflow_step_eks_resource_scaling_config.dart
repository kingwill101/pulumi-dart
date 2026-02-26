// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_workflow_step_eks_resource_scaling_config_eks_cluster/plan_workflow_step_eks_resource_scaling_config_eks_cluster.dart';
import '../plan_workflow_step_eks_resource_scaling_config_kubernetes_resource_type/plan_workflow_step_eks_resource_scaling_config_kubernetes_resource_type.dart';
import '../plan_workflow_step_eks_resource_scaling_config_scaling_resource/plan_workflow_step_eks_resource_scaling_config_scaling_resource.dart';
import '../plan_workflow_step_eks_resource_scaling_config_ungraceful/plan_workflow_step_eks_resource_scaling_config_ungraceful.dart';

class PlanWorkflowStepEksResourceScalingConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  final String capacityMonitoringApproach;

  /// List of EKS clusters. See EKS Clusters below.
  final List<PlanWorkflowStepEksResourceScalingConfigEksCluster>? eksClusters;

  /// Kubernetes resource type. See Kubernetes Resource Type below.
  final List<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>?
      kubernetesResourceTypes;

  /// List of scaling resources. See Scaling Resources below.
  final List<PlanWorkflowStepEksResourceScalingConfigScalingResource>?
      scalingResources;

  /// Target capacity percentage.
  final int targetPercent;

  /// Timeout in minutes.
  final int? timeoutMinutes;

  /// Ungraceful behavior configuration. See Ungraceful Capacity below.
  final List<PlanWorkflowStepEksResourceScalingConfigUngraceful>? ungracefuls;

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
    final map = <String, dynamic>{};
    map['capacityMonitoringApproach'] = capacityMonitoringApproach;
    final eksClustersValue = eksClusters;
    if (eksClustersValue != null) {
      map['eksClusters'] = Input.encodeList<
          PlanWorkflowStepEksResourceScalingConfigEksCluster,
          Map<String, dynamic>>(eksClustersValue, (value) => value.toMap());
    }
    final kubernetesResourceTypesValue = kubernetesResourceTypes;
    if (kubernetesResourceTypesValue != null) {
      map['kubernetesResourceTypes'] = Input.encodeList<
              PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType,
              Map<String, dynamic>>(
          kubernetesResourceTypesValue, (value) => value.toMap());
    }
    final scalingResourcesValue = scalingResources;
    if (scalingResourcesValue != null) {
      map['scalingResources'] = Input.encodeList<
              PlanWorkflowStepEksResourceScalingConfigScalingResource,
              Map<String, dynamic>>(
          scalingResourcesValue, (value) => value.toMap());
    }
    map['targetPercent'] = targetPercent;
    final timeoutMinutesValue = timeoutMinutes;
    if (timeoutMinutesValue != null) {
      map['timeoutMinutes'] = timeoutMinutesValue;
    }
    final ungracefulsValue = ungracefuls;
    if (ungracefulsValue != null) {
      map['ungracefuls'] = Input.encodeList<
          PlanWorkflowStepEksResourceScalingConfigUngraceful,
          Map<String, dynamic>>(ungracefulsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepEksResourceScalingConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfig(
      capacityMonitoringApproach: map['capacityMonitoringApproach'] as String,
      eksClusters: map['eksClusters'] == null
          ? null
          : Input.decodeList<
                  PlanWorkflowStepEksResourceScalingConfigEksCluster>(
              map['eksClusters'],
              (value) =>
                  PlanWorkflowStepEksResourceScalingConfigEksCluster.fromMap(
                      (value as Map).cast<String, dynamic>())),
      kubernetesResourceTypes: map['kubernetesResourceTypes'] == null
          ? null
          : Input.decodeList<
                  PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>(
              map['kubernetesResourceTypes'],
              (value) =>
                  PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType
                      .fromMap((value as Map).cast<String, dynamic>())),
      scalingResources: map['scalingResources'] == null
          ? null
          : Input.decodeList<
                  PlanWorkflowStepEksResourceScalingConfigScalingResource>(
              map['scalingResources'],
              (value) => PlanWorkflowStepEksResourceScalingConfigScalingResource
                  .fromMap((value as Map).cast<String, dynamic>())),
      targetPercent: map['targetPercent'] as int,
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null
          ? null
          : Input.decodeList<
                  PlanWorkflowStepEksResourceScalingConfigUngraceful>(
              map['ungracefuls'],
              (value) =>
                  PlanWorkflowStepEksResourceScalingConfigUngraceful.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
