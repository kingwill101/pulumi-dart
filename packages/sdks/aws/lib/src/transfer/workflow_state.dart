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
      'onExceptionSteps': ?pulumi.Input.mapOptionalInputValue<List<WorkflowOnExceptionStep>, List<Map<String, dynamic>>>(onExceptionSteps, (value) => pulumi.Input.encodeList<WorkflowOnExceptionStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<WorkflowStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<WorkflowStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      onExceptionSteps: map['onExceptionSteps'] == null ? null : ((pulumi.Input.decodeList<WorkflowOnExceptionStep>(map['onExceptionSteps']!, (value) => WorkflowOnExceptionStep.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      steps: map['steps'] == null ? null : ((pulumi.Input.decodeList<WorkflowStep>(map['steps']!, (value) => WorkflowStep.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

