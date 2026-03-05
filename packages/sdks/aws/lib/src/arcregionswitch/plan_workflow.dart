// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step.dart';

class PlanWorkflow {
  /// List of steps in the workflow. See Step below.
  final pulumi.Input<List<PlanWorkflowStep>>? steps;
  /// Description of the workflow.
  final pulumi.Input<String>? workflowDescription;
  /// Action to perform. Valid values: `activate`, `deactivate`.
  final pulumi.Input<String> workflowTargetAction;
  /// Target region for the workflow.
  final pulumi.Input<String>? workflowTargetRegion;

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
      'steps': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<PlanWorkflowStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workflowDescription': ?workflowDescription,
      'workflowTargetAction': workflowTargetAction,
      'workflowTargetRegion': ?workflowTargetRegion,
    };
  }

  factory PlanWorkflow.fromMap(Map<String, dynamic> map) {
    return PlanWorkflow(
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStep>(guardedValue, (value) => PlanWorkflowStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workflowDescription: (() { final guardedValue = map['workflowDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowTargetAction: pulumi.Input.fromValue(map['workflowTargetAction'] as String),
      workflowTargetRegion: (() { final guardedValue = map['workflowTargetRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

