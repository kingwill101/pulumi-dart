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
  const WorkflowArgs({
    this.description,
    this.onExceptionSteps,
    this.region,
    required this.steps,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'onExceptionSteps': ?pulumi.Input.mapOptionalInputValue<List<WorkflowOnExceptionStep>, List<Map<String, dynamic>>>(onExceptionSteps, (value) => pulumi.Input.encodeList<WorkflowOnExceptionStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'steps': pulumi.Input.mapInputValue<List<WorkflowStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<WorkflowStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onExceptionSteps: (() { final guardedValue = map['onExceptionSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowOnExceptionStep>(guardedValue, (value) => WorkflowOnExceptionStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowStep>(map['steps']!, (value) => WorkflowStep.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

