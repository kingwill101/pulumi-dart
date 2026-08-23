// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config_eks_cluster.dart';
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config_kubernetes_resource_type.dart';
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config_scaling_resource.dart';
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  final pulumi.Input<String> capacityMonitoringApproach;
  /// EKS clusters. See `eksClusters` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster>>? eksClusters;
  /// Kubernetes resource type. See `kubernetesResourceType` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType>>? kubernetesResourceTypes;
  /// Scaling resources. See `scalingResources` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource>>? scalingResources;
  /// Target capacity percentage.
  final pulumi.Input<int> targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.eks_resource_scaling_config.ungraceful` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful>>? ungracefuls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfig].
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  /// [eksClusters] EKS clusters. See `eksClusters` Block for details.
  /// [kubernetesResourceTypes] Kubernetes resource type. See `kubernetesResourceType` Block for details.
  /// [scalingResources] Scaling resources. See `scalingResources` Block for details.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See `workflow.step.eks_resource_scaling_config.ungraceful` Block for details.
  const PlanWorkflowStepParallelConfigStepEksResourceScalingConfig({
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
      'eksClusters': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster>, List<Map<String, dynamic>>>(eksClusters, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubernetesResourceTypes': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType>, List<Map<String, dynamic>>>(kubernetesResourceTypes, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scalingResources': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource>, List<Map<String, dynamic>>>(scalingResources, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPercent': targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfig(
      capacityMonitoringApproach: pulumi.Input.fromValue(map['capacityMonitoringApproach'] as String),
      eksClusters: (() { final guardedValue = map['eksClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kubernetesResourceTypes: (() { final guardedValue = map['kubernetesResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scalingResources: (() { final guardedValue = map['scalingResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetPercent: pulumi.Input.fromValue(map['targetPercent'] as int),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
