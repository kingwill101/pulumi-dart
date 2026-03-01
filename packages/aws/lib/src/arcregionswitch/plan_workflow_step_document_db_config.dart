// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_document_db_config_ungraceful.dart';

class PlanWorkflowStepDocumentDbConfig {
  final String behavior;
  final String? crossAccountRole;
  final List<String> databaseClusterArns;
  final String? externalId;
  final String globalClusterIdentifier;
  final int? timeoutMinutes;
  final List<PlanWorkflowStepDocumentDbConfigUngraceful>? ungracefuls;

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
      'ungracefuls': ?ungracefuls == null
          ? null
          : pulumi.Input.encodeList<
              PlanWorkflowStepDocumentDbConfigUngraceful,
              Map<String, dynamic>
            >(ungracefuls!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepDocumentDbConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepDocumentDbConfig(
      behavior: map['behavior'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      databaseClusterArns: (map['databaseClusterArns'] as List).cast<String>(),
      externalId: map['externalId'] == null
          ? null
          : map['externalId'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] as String,
      timeoutMinutes: map['timeoutMinutes'] == null
          ? null
          : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null
          ? null
          : pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfigUngraceful>(
              map['ungracefuls'],
              (value) => PlanWorkflowStepDocumentDbConfigUngraceful.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
