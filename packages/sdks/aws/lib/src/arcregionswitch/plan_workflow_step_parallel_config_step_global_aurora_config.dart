// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_global_aurora_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepGlobalAuroraConfig {
  /// Behavior for Aurora operations. Valid values: `switchoverOnly`, `failover`.
  final pulumi.Input<String> behavior;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// List of database cluster ARNs.
  final pulumi.Input<List<String>> databaseClusterArns;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful Aurora below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>>? ungracefuls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepGlobalAuroraConfig].
  /// [behavior] Behavior for Aurora operations. Valid values: `switchoverOnly`, `failover`.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [databaseClusterArns] List of database cluster ARNs.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See Ungraceful Aurora below.
  PlanWorkflowStepParallelConfigStepGlobalAuroraConfig({
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
      behavior: (map['behavior'] as String).input(),
      crossAccountRole: map['crossAccountRole'] == null ? null : (map['crossAccountRole'] as String).input(),
      databaseClusterArns: ((map['databaseClusterArns'] as List).cast<String>()).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      globalClusterIdentifier: (map['globalClusterIdentifier'] as String).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : (map['timeoutMinutes'] as int).input(),
      ungracefuls: map['ungracefuls'] == null ? null : (pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>(map['ungracefuls'], (value) => PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

