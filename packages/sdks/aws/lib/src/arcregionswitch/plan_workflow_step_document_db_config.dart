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
  PlanWorkflowStepDocumentDbConfig({
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
      behavior: (map['behavior'] as String).input(),
      crossAccountRole: map['crossAccountRole'] == null ? null : ((map['crossAccountRole'] as String).input()).input(),
      databaseClusterArns: ((map['databaseClusterArns'] as List).cast<String>()).input(),
      externalId: map['externalId'] == null ? null : ((map['externalId'] as String).input()).input(),
      globalClusterIdentifier: (map['globalClusterIdentifier'] as String).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : ((map['timeoutMinutes'] as int).input()).input(),
      ungracefuls: map['ungracefuls'] == null ? null : ((pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfigUngraceful>(map['ungracefuls']!, (value) => PlanWorkflowStepDocumentDbConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

