// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_rds_switchover_read_replica_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// Map of regions to DB instance ARNs. Provide an ARN for each region in the plan.
  final pulumi.Input<Map<String, String>> dbInstanceArnMap;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.rds_switchover_read_replica_config.ungraceful` Block for details.
  final pulumi.Input<PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful?>? ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [dbInstanceArnMap] Map of regions to DB instance ARNs. Provide an ARN for each region in the plan.
  /// [externalId] External ID for cross-account role assumption.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungraceful] Ungraceful behavior configuration. See `workflow.step.rds_switchover_read_replica_config.ungraceful` Block for details.
  const PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfig({
    this.crossAccountRole,
    required this.dbInstanceArnMap,
    this.externalId,
    this.timeoutMinutes,
    this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'dbInstanceArnMap': dbInstanceArnMap,
      'externalId': ?externalId,
      'timeoutMinutes': ?timeoutMinutes,
      'ungraceful': ?pulumi.Input.mapOptionalInputValue<PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful, Map<String, dynamic>>(ungraceful, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfig(
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceArnMap: pulumi.Input.fromValue((map['dbInstanceArnMap'] as Map).cast<String, String>()),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ungraceful: (() { final guardedValue = map['ungraceful']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
