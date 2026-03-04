// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step.dart';
import 'workflow_step.dart';

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// The Workflow ARN.
  final pulumi.Input<String>? arn;

  /// A textual description for the workflow.
  final pulumi.Input<String>? description;

  /// Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below.
  final pulumi.Input<List<WorkflowOnExceptionStep>>? onExceptionSteps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the details for the steps that are in the specified workflow. See Workflow Steps below.
  final pulumi.Input<List<WorkflowStep>>? steps;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [WorkflowState].
  /// [arn] The Workflow ARN.
  /// [description] A textual description for the workflow.
  /// [onExceptionSteps] Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [steps] Specifies the details for the steps that are in the specified workflow. See Workflow Steps below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  WorkflowState({
    this.arn,
    this.description,
    this.onExceptionSteps,
    this.region,
    this.steps,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'onExceptionSteps':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkflowOnExceptionStep>,
            List<Map<String, dynamic>>
          >(
            onExceptionSteps,
            (value) =>
                pulumi.Input.encodeList<
                  WorkflowOnExceptionStep,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'steps':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkflowStep>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<WorkflowStep, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onExceptionSteps: (() {
        final guardedValue = map['onExceptionSteps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkflowOnExceptionStep>(
            guardedValue,
            (value) => WorkflowOnExceptionStep.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      steps: (() {
        final guardedValue = map['steps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkflowStep>(
            guardedValue,
            (value) =>
                WorkflowStep.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
