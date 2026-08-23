// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_ec2_asg_capacity_increase_config_asg.dart';
import 'plan_workflow_step_ec2_asg_capacity_increase_config_ungraceful.dart';

class PlanWorkflowStepEc2AsgCapacityIncreaseConfig {
  /// Auto Scaling group configuration. See `asg` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg>>? asgs;
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  final pulumi.Input<String> capacityMonitoringApproach;
  /// Target capacity percentage.
  final pulumi.Input<int>? targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.ec2_asg_capacity_increase_config.ungraceful` Block for details.
  final pulumi.Input<PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful>? ungraceful;

  /// Creates a new [PlanWorkflowStepEc2AsgCapacityIncreaseConfig].
  /// [asgs] Auto Scaling group configuration. See `asg` Block for details.
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `autoscalingMaxInLast24Hours`.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungraceful] Ungraceful behavior configuration. See `workflow.step.ec2_asg_capacity_increase_config.ungraceful` Block for details.
  const PlanWorkflowStepEc2AsgCapacityIncreaseConfig({
    this.asgs,
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asgs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg>, List<Map<String, dynamic>>>(asgs, (value) => pulumi.Input.encodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacityMonitoringApproach': capacityMonitoringApproach,
      'targetPercent': ?targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungraceful': ?pulumi.Input.mapOptionalInputValue<PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful, Map<String, dynamic>>(ungraceful, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepEc2AsgCapacityIncreaseConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEc2AsgCapacityIncreaseConfig(
      asgs: (() { final guardedValue = map['asgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg>(guardedValue, (value) => PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacityMonitoringApproach: pulumi.Input.fromValue(map['capacityMonitoringApproach'] as String),
      targetPercent: (() { final guardedValue = map['targetPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ungraceful: (() { final guardedValue = map['ungraceful']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
