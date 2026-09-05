// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_neptune_global_database_config_ungraceful.dart';

class PlanWorkflowStepNeptuneGlobalDatabaseConfig {
  /// Behavior for global database operations.
  final pulumi.Input<String> behavior;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;
  /// Map of regions to database cluster ARNs.
  final pulumi.Input<Map<String, String>> regionDatabaseClusterArns;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.neptune_global_database_config.ungraceful` Block for details.
  final pulumi.Input<List<PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful>?>? ungracefuls;

  /// Creates a new [PlanWorkflowStepNeptuneGlobalDatabaseConfig].
  /// [behavior] Behavior for global database operations.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [regionDatabaseClusterArns] Map of regions to database cluster ARNs.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See `workflow.step.neptune_global_database_config.ungraceful` Block for details.
  const PlanWorkflowStepNeptuneGlobalDatabaseConfig({
    required this.behavior,
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.regionDatabaseClusterArns,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'globalClusterIdentifier': globalClusterIdentifier,
      'regionDatabaseClusterArns': regionDatabaseClusterArns,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepNeptuneGlobalDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepNeptuneGlobalDatabaseConfig(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: pulumi.Input.fromValue(map['globalClusterIdentifier'] as String),
      regionDatabaseClusterArns: pulumi.Input.fromValue((map['regionDatabaseClusterArns'] as Map).cast<String, String>()),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
