// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_ec2_asg_capacity_increase_config_asg.dart';
import 'plan_workflow_step_parallel_config_step_ec2_asg_capacity_increase_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig {
  /// Auto Scaling group configuration. See ASG below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg>>? asgs;
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  final pulumi.Input<String> capacityMonitoringApproach;
  /// Target capacity percentage.
  final pulumi.Input<int>? targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful below.
  final pulumi.Input<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful>? ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig].
  /// [asgs] Auto Scaling group configuration. See ASG below.
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungraceful] Ungraceful behavior configuration. See Ungraceful below.
  PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig({
    this.asgs,
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asgs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg>, List<Map<String, dynamic>>>(asgs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacityMonitoringApproach': capacityMonitoringApproach,
      'targetPercent': ?targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungraceful': ?pulumi.Input.mapOptionalInputValue<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful, Map<String, dynamic>>(ungraceful, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig(
      asgs: map['asgs'] == null ? null : ((pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg>(map['asgs']!, (value) => PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      capacityMonitoringApproach: (map['capacityMonitoringApproach'] as String).input(),
      targetPercent: map['targetPercent'] == null ? null : ((map['targetPercent'] as int).input()).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : ((map['timeoutMinutes'] as int).input()).input(),
      ungraceful: map['ungraceful'] == null ? null : ((PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful.fromMap((map['ungraceful']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

