// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_eks_resource_scaling_config_eks_cluster.dart';
import 'plan_workflow_step_eks_resource_scaling_config_kubernetes_resource_type.dart';
import 'plan_workflow_step_eks_resource_scaling_config_scaling_resource.dart';
import 'plan_workflow_step_eks_resource_scaling_config_ungraceful.dart';

class PlanWorkflowStepEksResourceScalingConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  final pulumi.Input<String> capacityMonitoringApproach;
  /// EKS clusters. See `eksClusters` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfigEksCluster>?>? eksClusters;
  /// Kubernetes resource type. See `kubernetesResourceType` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>?>? kubernetesResourceTypes;
  /// Scaling resources. See `scalingResources` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfigScalingResource>?>? scalingResources;
  /// Target capacity percentage.
  final pulumi.Input<int> targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.eks_resource_scaling_config.ungraceful` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfigUngraceful>?>? ungracefuls;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfig].
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  /// [eksClusters] EKS clusters. See `eksClusters` Block for details.
  /// [kubernetesResourceTypes] Kubernetes resource type. See `kubernetesResourceType` Block for details.
  /// [scalingResources] Scaling resources. See `scalingResources` Block for details.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See `workflow.step.eks_resource_scaling_config.ungraceful` Block for details.
  const PlanWorkflowStepEksResourceScalingConfig({
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
      'eksClusters': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEksResourceScalingConfigEksCluster>, List<Map<String, dynamic>>>(eksClusters, (value) => pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigEksCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubernetesResourceTypes': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>, List<Map<String, dynamic>>>(kubernetesResourceTypes, (value) => pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scalingResources': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEksResourceScalingConfigScalingResource>, List<Map<String, dynamic>>>(scalingResources, (value) => pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigScalingResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPercent': targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEksResourceScalingConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepEksResourceScalingConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfig(
      capacityMonitoringApproach: pulumi.Input.fromValue(map['capacityMonitoringApproach'] as String),
      eksClusters: (() { final guardedValue = map['eksClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigEksCluster>(guardedValue, (value) => PlanWorkflowStepEksResourceScalingConfigEksCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kubernetesResourceTypes: (() { final guardedValue = map['kubernetesResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType>(guardedValue, (value) => PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scalingResources: (() { final guardedValue = map['scalingResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigScalingResource>(guardedValue, (value) => PlanWorkflowStepEksResourceScalingConfigScalingResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetPercent: pulumi.Input.fromValue((map['targetPercent'] as num).toInt()),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepEksResourceScalingConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
