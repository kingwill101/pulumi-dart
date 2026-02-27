// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_workflow_step_parallel_config_step_ecs_capacity_increase_config_service/plan_workflow_step_parallel_config_step_ecs_capacity_increase_config_service.dart';
import '../plan_workflow_step_parallel_config_step_ecs_capacity_increase_config_ungraceful/plan_workflow_step_parallel_config_step_ecs_capacity_increase_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig {
  /// Capacity monitoring approach. Valid values: `sampledMaxInLast24Hours`, `containerInsightsMaxInLast24Hours`.
  final String capacityMonitoringApproach;

  /// ECS service configuration. See ECS Service below.
  final List<
          PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService>?
      services;

  /// Target capacity percentage.
  final int? targetPercent;

  /// Timeout in minutes.
  final int? timeoutMinutes;

  /// Ungraceful behavior configuration. See Ungraceful Capacity below.
  final PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful?
      ungraceful;

  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.services,
    this.targetPercent,
    this.timeoutMinutes,
    this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityMonitoringApproach'] = capacityMonitoringApproach;
    final servicesValue = services;
    if (servicesValue != null) {
      map['services'] = pulumi.Input.encodeList<
          PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService,
          Map<String, dynamic>>(servicesValue, (value) => value.toMap());
    }
    final targetPercentValue = targetPercent;
    if (targetPercentValue != null) {
      map['targetPercent'] = targetPercentValue;
    }
    final timeoutMinutesValue = timeoutMinutes;
    if (timeoutMinutesValue != null) {
      map['timeoutMinutes'] = timeoutMinutesValue;
    }
    final ungracefulValue = ungraceful;
    if (ungracefulValue != null) {
      map['ungraceful'] = ungracefulValue.toMap();
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig(
      capacityMonitoringApproach: map['capacityMonitoringApproach'] as String,
      services: map['services'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService>(
              map['services'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService
                      .fromMap((value as Map).cast<String, dynamic>())),
      targetPercent:
          map['targetPercent'] == null ? null : map['targetPercent'] as int,
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungraceful: map['ungraceful'] == null
          ? null
          : PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful
              .fromMap((map['ungraceful'] as Map).cast<String, dynamic>()),
    );
  }
}
