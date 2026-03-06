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
  const PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig({
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
      asgs: (() { final guardedValue = map['asgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacityMonitoringApproach: pulumi.Input.fromValue(map['capacityMonitoringApproach'] as String),
      targetPercent: (() { final guardedValue = map['targetPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ungraceful: (() { final guardedValue = map['ungraceful']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

