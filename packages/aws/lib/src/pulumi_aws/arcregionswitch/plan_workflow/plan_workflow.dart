// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_workflow_step/plan_workflow_step.dart';

class PlanWorkflow {
  /// List of steps in the workflow. See Step below.
  final List<PlanWorkflowStep>? steps;

  /// Description of the workflow.
  final String? workflowDescription;

  /// Action to perform. Valid values: `activate`, `deactivate`.
  final String workflowTargetAction;

  /// Target region for the workflow.
  final String? workflowTargetRegion;

  PlanWorkflow({
    this.steps,
    this.workflowDescription,
    required this.workflowTargetAction,
    this.workflowTargetRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stepsValue = steps;
    if (stepsValue != null) {
      map['steps'] = Input.encodeList<PlanWorkflowStep, Map<String, dynamic>>(
          stepsValue, (value) => value.toMap());
    }
    final workflowDescriptionValue = workflowDescription;
    if (workflowDescriptionValue != null) {
      map['workflowDescription'] = workflowDescriptionValue;
    }
    map['workflowTargetAction'] = workflowTargetAction;
    final workflowTargetRegionValue = workflowTargetRegion;
    if (workflowTargetRegionValue != null) {
      map['workflowTargetRegion'] = workflowTargetRegionValue;
    }
    return map;
  }

  factory PlanWorkflow.fromMap(Map<String, dynamic> map) {
    return PlanWorkflow(
      steps: map['steps'] == null
          ? null
          : Input.decodeList<PlanWorkflowStep>(
              map['steps'],
              (value) => PlanWorkflowStep.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workflowDescription: map['workflowDescription'] == null
          ? null
          : map['workflowDescription'] as String,
      workflowTargetAction: map['workflowTargetAction'] as String,
      workflowTargetRegion: map['workflowTargetRegion'] == null
          ? null
          : map['workflowTargetRegion'] as String,
    );
  }
}
