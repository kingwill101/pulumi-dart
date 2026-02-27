// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workflow_on_exception_step/workflow_on_exception_step.dart';
import '../workflow_step/workflow_step.dart';

/// The set of arguments for Workflow.
class WorkflowTransferArgs {
  /// A textual description for the workflow.
  final pulumi.Input<String>? description;

  /// Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below.
  final pulumi.Input<List<WorkflowOnExceptionStep>>? onExceptionSteps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the details for the steps that are in the specified workflow. See Workflow Steps below.
  final pulumi.Input<List<WorkflowStep>> steps;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  WorkflowTransferArgs({
    this.description,
    this.onExceptionSteps,
    this.region,
    required this.steps,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final onExceptionStepsValue = onExceptionSteps;
    if (onExceptionStepsValue != null) {
      map['onExceptionSteps'] = pulumi.Input.mapOptionalInputValue<
              List<WorkflowOnExceptionStep>, List<Map<String, dynamic>>>(
          onExceptionStepsValue,
          (value) => pulumi.Input.encodeList<WorkflowOnExceptionStep,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['steps'] = pulumi.Input.mapInputValue<List<WorkflowStep>,
            List<Map<String, dynamic>>>(
        steps,
        (value) => pulumi.Input.encodeList<WorkflowStep, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WorkflowTransferArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowTransferArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      onExceptionSteps:
          pulumi.Input.asOptionalInput<List<WorkflowOnExceptionStep>>(
              map['onExceptionSteps']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      steps: pulumi.Input.asInput<List<WorkflowStep>>(map['steps']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
