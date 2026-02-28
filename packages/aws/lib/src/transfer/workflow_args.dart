// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step.dart';
import 'workflow_step.dart';

/// {@template pulumi_transfer_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_transfer_workflow_workflow_args_doc}
class WorkflowArgs {
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

  /// Creates a new [WorkflowArgs].
  /// [description] A textual description for the workflow.
  /// [onExceptionSteps] Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [steps] Specifies the details for the steps that are in the specified workflow. See Workflow Steps below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WorkflowArgs({
    String? description,
    List<WorkflowOnExceptionStep>? onExceptionSteps,
    String? region,
    required List<WorkflowStep> steps,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        onExceptionSteps =
            pulumi.Input.asOptionalInput<List<WorkflowOnExceptionStep>>(
                onExceptionSteps),
        region = pulumi.Input.asOptionalInput<String>(region),
        steps = pulumi.Input.asInput<List<WorkflowStep>>(steps),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      onExceptionSteps: map['onExceptionSteps'] == null
          ? null
          : pulumi.Input.decodeList<WorkflowOnExceptionStep>(
              map['onExceptionSteps'],
              (value) => WorkflowOnExceptionStep.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      steps: pulumi.Input.decodeList<WorkflowStep>(
          map['steps'],
          (value) =>
              WorkflowStep.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
