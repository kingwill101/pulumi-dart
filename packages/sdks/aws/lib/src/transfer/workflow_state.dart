// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step.dart';
import 'workflow_step.dart';

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// Workflow ARN.
  final pulumi.Input<String?>? arn;
  /// Textual description for the workflow.
  final pulumi.Input<String?>? description;
  /// Steps (actions) to take if errors are encountered during execution of the workflow. See `onExceptionSteps` Block below.
  final pulumi.Input<List<WorkflowOnExceptionStep>?>? onExceptionSteps;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Details for the steps that are in the specified workflow. See `steps` Block below.
  final pulumi.Input<List<WorkflowStep>?>? steps;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [WorkflowState].
  /// [arn] Workflow ARN.
  /// [description] Textual description for the workflow.
  /// [onExceptionSteps] Steps (actions) to take if errors are encountered during execution of the workflow. See `onExceptionSteps` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [steps] Details for the steps that are in the specified workflow. See `steps` Block below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const WorkflowState({
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
      'onExceptionSteps': ?pulumi.Input.mapOptionalInputValue<List<WorkflowOnExceptionStep>, List<Map<String, dynamic>>>(onExceptionSteps, (value) => pulumi.Input.encodeList<WorkflowOnExceptionStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<WorkflowStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<WorkflowStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onExceptionSteps: (() { final guardedValue = map['onExceptionSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowOnExceptionStep>(guardedValue, (value) => WorkflowOnExceptionStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowStep>(guardedValue, (value) => WorkflowStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
