// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step.dart';

class PlanWorkflow {
  /// List of steps in the workflow. See Step below.
  final List<PlanWorkflowStep>? steps;
  /// Description of the workflow.
  final String? workflowDescription;
  /// Action to perform. Valid values: `activate`, `deactivate`.
  final String workflowTargetAction;
  /// Target region for the workflow.
  final String? workflowTargetRegion;

  /// Creates a new [PlanWorkflow].
  /// [steps] List of steps in the workflow. See Step below.
  /// [workflowDescription] Description of the workflow.
  /// [workflowTargetAction] Action to perform. Valid values: `activate`, `deactivate`.
  /// [workflowTargetRegion] Target region for the workflow.
  PlanWorkflow({
    this.steps,
    this.workflowDescription,
    required this.workflowTargetAction,
    this.workflowTargetRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'steps': ?steps == null ? null : pulumi.Input.encodeList<PlanWorkflowStep, Map<String, dynamic>>(steps!, (value) => value.toMap()),
      'workflowDescription': ?workflowDescription,
      'workflowTargetAction': workflowTargetAction,
      'workflowTargetRegion': ?workflowTargetRegion,
    };
  }

  factory PlanWorkflow.fromMap(Map<String, dynamic> map) {
    return PlanWorkflow(
      steps: map['steps'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStep>(map['steps'], (value) => PlanWorkflowStep.fromMap((value as Map).cast<String, dynamic>())),
      workflowDescription: map['workflowDescription'] == null ? null : map['workflowDescription'] as String,
      workflowTargetAction: map['workflowTargetAction'] as String,
      workflowTargetRegion: map['workflowTargetRegion'] == null ? null : map['workflowTargetRegion'] as String,
    );
  }
}

