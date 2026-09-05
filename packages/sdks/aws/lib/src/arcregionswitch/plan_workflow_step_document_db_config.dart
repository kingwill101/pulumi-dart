// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_document_db_config_ungraceful.dart';

class PlanWorkflowStepDocumentDbConfig {
  /// Behavior for global cluster operations. Valid values: `switchoverOnly`, `failover`.
  final pulumi.Input<String> behavior;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// List of DocumentDB cluster ARNs.
  final pulumi.Input<List<String>> databaseClusterArns;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.document_db_config.ungraceful` Block for details.
  final pulumi.Input<List<PlanWorkflowStepDocumentDbConfigUngraceful>?>? ungracefuls;

  /// Creates a new [PlanWorkflowStepDocumentDbConfig].
  /// [behavior] Behavior for global cluster operations. Valid values: `switchoverOnly`, `failover`.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [databaseClusterArns] List of DocumentDB cluster ARNs.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See `workflow.step.document_db_config.ungraceful` Block for details.
  const PlanWorkflowStepDocumentDbConfig({
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
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepDocumentDbConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepDocumentDbConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepDocumentDbConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepDocumentDbConfig(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseClusterArns: pulumi.Input.fromValue((map['databaseClusterArns'] as List).cast<String>()),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: pulumi.Input.fromValue(map['globalClusterIdentifier'] as String),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepDocumentDbConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
