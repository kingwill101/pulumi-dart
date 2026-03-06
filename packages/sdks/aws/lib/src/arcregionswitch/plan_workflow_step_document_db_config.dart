// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_document_db_config_ungraceful.dart';

class PlanWorkflowStepDocumentDbConfig {
  final pulumi.Input<String> behavior;
  final pulumi.Input<String>? crossAccountRole;
  final pulumi.Input<List<String>> databaseClusterArns;
  final pulumi.Input<String>? externalId;
  final pulumi.Input<String> globalClusterIdentifier;
  final pulumi.Input<int>? timeoutMinutes;
  final pulumi.Input<List<PlanWorkflowStepDocumentDbConfigUngraceful>>? ungracefuls;

  /// Creates a new [PlanWorkflowStepDocumentDbConfig].
  /// [behavior] Required.
  /// [crossAccountRole] Optional.
  /// [databaseClusterArns] Required.
  /// [externalId] Optional.
  /// [globalClusterIdentifier] Required.
  /// [timeoutMinutes] Optional.
  /// [ungracefuls] Optional.
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
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepDocumentDbConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

