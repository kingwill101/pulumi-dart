// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_global_aurora_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepGlobalAuroraConfig {
  /// Behavior for Aurora operations. Valid values: `switchoverOnly`, `failover`.
  final String behavior;
  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;
  /// List of database cluster ARNs.
  final List<String> databaseClusterArns;
  /// External ID for cross-account role assumption.
  final String? externalId;
  /// Global cluster identifier.
  final String globalClusterIdentifier;
  /// Timeout in minutes.
  final int? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful Aurora below.
  final List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>? ungracefuls;

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
      'ungracefuls': ?ungracefuls == null ? null : pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful, Map<String, dynamic>>(ungracefuls!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepGlobalAuroraConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepGlobalAuroraConfig(
      behavior: map['behavior'] as String,
      crossAccountRole: map['crossAccountRole'] == null ? null : map['crossAccountRole'] as String,
      databaseClusterArns: (map['databaseClusterArns'] as List).cast<String>(),
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] as String,
      timeoutMinutes: map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful>(map['ungracefuls'], (value) => PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

