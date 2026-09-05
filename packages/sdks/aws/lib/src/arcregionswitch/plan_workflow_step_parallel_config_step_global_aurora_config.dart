// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_global_aurora_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepGlobalAuroraConfig {
  /// Behavior for Aurora operations. Valid values: `switchoverOnly`, `failover`.
  final pulumi.Input<String> behavior;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// List of database cluster ARNs.
  final pulumi.Input<List<String>> databaseClusterArns;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.global_aurora_config.ungraceful` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>?>? ungracefuls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepGlobalAuroraConfig].
  /// [behavior] Behavior for Aurora operations. Valid values: `switchoverOnly`, `failover`.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [databaseClusterArns] List of database cluster ARNs.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See `workflow.step.global_aurora_config.ungraceful` Block for details.
  const PlanWorkflowStepParallelConfigStepGlobalAuroraConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'crossAccountRole': ?crossAccountRole,
      'databaseClusterArns': databaseClusterArns,
      'externalId': ?externalId,
      'globalClusterIdentifier': globalClusterIdentifier,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStepGlobalAuroraConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepGlobalAuroraConfig(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseClusterArns: pulumi.Input.fromValue((map['databaseClusterArns'] as List).cast<String>()),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: pulumi.Input.fromValue(map['globalClusterIdentifier'] as String),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
