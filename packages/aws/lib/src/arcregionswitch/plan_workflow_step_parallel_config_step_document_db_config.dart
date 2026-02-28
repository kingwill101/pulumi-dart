// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_document_db_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepDocumentDbConfig {
  final String behavior;
  final String? crossAccountRole;
  final List<String> databaseClusterArns;
  final String? externalId;
  final String globalClusterIdentifier;
  final int? timeoutMinutes;
  final List<PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful>? ungracefuls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepDocumentDbConfig].
  /// [behavior] Required.
  /// [crossAccountRole] Optional.
  /// [databaseClusterArns] Required.
  /// [externalId] Optional.
  /// [globalClusterIdentifier] Required.
  /// [timeoutMinutes] Optional.
  /// [ungracefuls] Optional.
  PlanWorkflowStepParallelConfigStepDocumentDbConfig({
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
      'ungracefuls': ?ungracefuls == null ? null : pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful, Map<String, dynamic>>(ungracefuls!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepDocumentDbConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepDocumentDbConfig(
      behavior: map['behavior'] as String,
      crossAccountRole: map['crossAccountRole'] == null ? null : map['crossAccountRole'] as String,
      databaseClusterArns: (map['databaseClusterArns'] as List).cast<String>(),
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] as String,
      timeoutMinutes: map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful>(map['ungracefuls'], (value) => PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

