// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_document_db_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepDocumentDbConfig {
  final pulumi.Input<String> behavior;
  final pulumi.Input<String>? crossAccountRole;
  final pulumi.Input<List<String>> databaseClusterArns;
  final pulumi.Input<String>? externalId;
  final pulumi.Input<String> globalClusterIdentifier;
  final pulumi.Input<int>? timeoutMinutes;
  final pulumi.Input<
    List<PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful>
  >?
  ungracefuls;

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
      'ungracefuls':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful>,
            List<Map<String, dynamic>>
          >(
            ungracefuls,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PlanWorkflowStepParallelConfigStepDocumentDbConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepDocumentDbConfig(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      crossAccountRole: (() {
        final guardedValue = map['crossAccountRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseClusterArns: pulumi.Input.fromValue(
        (map['databaseClusterArns'] as List).cast<String>(),
      ),
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalClusterIdentifier: pulumi.Input.fromValue(
        map['globalClusterIdentifier'] as String,
      ),
      timeoutMinutes: (() {
        final guardedValue = map['timeoutMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ungracefuls: (() {
        final guardedValue = map['ungracefuls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful
          >(
            guardedValue,
            (value) =>
                PlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
