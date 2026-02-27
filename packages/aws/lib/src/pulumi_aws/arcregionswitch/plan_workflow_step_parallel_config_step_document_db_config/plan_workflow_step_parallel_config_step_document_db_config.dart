// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_workflow_step_parallel_config_step_document_db_config_ungraceful/plan_workflow_step_parallel_config_step_document_db_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepDocumentDbConfig {
  final String behavior;
  final String? crossAccountRole;
  final List<String> databaseClusterArns;
  final String? externalId;
  final String globalClusterIdentifier;
  final int? timeoutMinutes;
  final List<PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful>?
      ungracefuls;

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
          PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful,
          Map<String, dynamic>>(ungracefulsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepDocumentDbConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepDocumentDbConfig(
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
                  PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful>(
              map['ungracefuls'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
