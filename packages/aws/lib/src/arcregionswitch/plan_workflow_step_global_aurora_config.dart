// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_global_aurora_config_ungraceful.dart';

class PlanWorkflowStepGlobalAuroraConfig {
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
  final List<PlanWorkflowStepGlobalAuroraConfigUngraceful>? ungracefuls;

  /// Creates a new [PlanWorkflowStepGlobalAuroraConfig].
  /// [behavior] Behavior for Aurora operations. Valid values: `switchoverOnly`, `failover`.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [databaseClusterArns] List of database cluster ARNs.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See Ungraceful Aurora below.
  PlanWorkflowStepGlobalAuroraConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    final crossAccountRoleValue = crossAccountRole;
    if (crossAccountRoleValue != null) {
      map['crossAccountRole'] = crossAccountRoleValue;
    }
    map['databaseClusterArns'] = databaseClusterArns;
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    map['globalClusterIdentifier'] = globalClusterIdentifier;
    final timeoutMinutesValue = timeoutMinutes;
    if (timeoutMinutesValue != null) {
      map['timeoutMinutes'] = timeoutMinutesValue;
    }
    final ungracefulsValue = ungracefuls;
    if (ungracefulsValue != null) {
      map['ungracefuls'] = pulumi.Input.encodeList<
          PlanWorkflowStepGlobalAuroraConfigUngraceful,
          Map<String, dynamic>>(ungracefulsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepGlobalAuroraConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepGlobalAuroraConfig(
      behavior: map['behavior'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      databaseClusterArns: (map['databaseClusterArns'] as List).cast<String>(),
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] as String,
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepGlobalAuroraConfigUngraceful>(
              map['ungracefuls'],
              (value) => PlanWorkflowStepGlobalAuroraConfigUngraceful.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
