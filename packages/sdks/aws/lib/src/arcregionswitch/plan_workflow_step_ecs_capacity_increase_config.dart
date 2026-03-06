// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_ecs_capacity_increase_config_service.dart';
import 'plan_workflow_step_ecs_capacity_increase_config_ungraceful.dart';

class PlanWorkflowStepEcsCapacityIncreaseConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `containerInsightsMaxInLast24Hours`.
  final pulumi.Input<String> capacityMonitoringApproach;
  /// ECS service configuration. See ECS Service below.
  final pulumi.Input<List<PlanWorkflowStepEcsCapacityIncreaseConfigService>>? services;
  /// Target capacity percentage.
  final pulumi.Input<int>? targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful Capacity below.
  final pulumi.Input<PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful>? ungraceful;

  /// Creates a new [PlanWorkflowStepEcsCapacityIncreaseConfig].
  /// [capacityMonitoringApproach] Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `containerInsightsMaxInLast24Hours`.
  /// [services] ECS service configuration. See ECS Service below.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungraceful] Ungraceful behavior configuration. See Ungraceful Capacity below.
  const PlanWorkflowStepEcsCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.services,
    this.targetPercent,
    this.timeoutMinutes,
    this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityMonitoringApproach': capacityMonitoringApproach,
      'services': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEcsCapacityIncreaseConfigService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<PlanWorkflowStepEcsCapacityIncreaseConfigService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPercent': ?targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
      'ungraceful': ?pulumi.Input.mapOptionalInputValue<PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful, Map<String, dynamic>>(ungraceful, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepEcsCapacityIncreaseConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEcsCapacityIncreaseConfig(
      capacityMonitoringApproach: pulumi.Input.fromValue(map['capacityMonitoringApproach'] as String),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEcsCapacityIncreaseConfigService>(guardedValue, (value) => PlanWorkflowStepEcsCapacityIncreaseConfigService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetPercent: (() { final guardedValue = map['targetPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ungraceful: (() { final guardedValue = map['ungraceful']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

