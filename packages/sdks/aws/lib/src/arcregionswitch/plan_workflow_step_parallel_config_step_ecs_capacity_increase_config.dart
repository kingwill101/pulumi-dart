// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_ecs_capacity_increase_config_service.dart';
import 'plan_workflow_step_parallel_config_step_ecs_capacity_increase_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `containerInsightsMaxInLast24Hours`.
  final pulumi.Input<String> capacityMonitoringApproach;
  /// ECS service configuration. See ECS Service below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService>>? services;
  /// Target capacity percentage.
  final pulumi.Input<int>? targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful Capacity below.
  final pulumi.Input<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful>? ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig].
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `containerInsightsMaxInLast24Hours`.
  /// [services] ECS service configuration. See ECS Service below.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungraceful] Ungraceful behavior configuration. See Ungraceful Capacity below.
  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.services,
    this.targetPercent,
    this.timeoutMinutes,
    this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityMonitoringApproach': capacityMonitoringApproach,
      'services': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPercent': ?targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungraceful': ?pulumi.Input.mapOptionalInputValue<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful, Map<String, dynamic>>(ungraceful, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig(
      capacityMonitoringApproach: (map['capacityMonitoringApproach'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService>(map['services'], (value) => PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetPercent: map['targetPercent'] == null ? null : (map['targetPercent'] as int).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : (map['timeoutMinutes'] as int).input(),
      ungraceful: map['ungraceful'] == null ? null : (PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful.fromMap((map['ungraceful'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

