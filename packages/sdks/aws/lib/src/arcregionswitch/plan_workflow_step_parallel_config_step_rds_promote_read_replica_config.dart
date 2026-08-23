// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// Map of source DB instance identifiers to target DB instance ARNs.
  final pulumi.Input<Map<String, String>> dbInstanceArnMap;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [dbInstanceArnMap] Map of source DB instance identifiers to target DB instance ARNs.
  /// [externalId] External ID for cross-account role assumption.
  /// [timeoutMinutes] Timeout in minutes.
  const PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig({
    this.crossAccountRole,
    required this.dbInstanceArnMap,
    this.externalId,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'dbInstanceArnMap': dbInstanceArnMap,
      'externalId': ?externalId,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig(
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceArnMap: pulumi.Input.fromValue((map['dbInstanceArnMap'] as Map).cast<String, String>()),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
