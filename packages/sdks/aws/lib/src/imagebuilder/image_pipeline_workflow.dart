// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_pipeline_workflow_parameter.dart';

class ImagePipelineWorkflow {
  /// The action to take if the workflow fails. Must be one of `CONTINUE` or `ABORT`.
  final pulumi.Input<String>? onFailure;
  /// The parallel group in which to run a test Workflow.
  final pulumi.Input<String>? parallelGroup;
  /// Configuration block for the workflow parameters. Detailed below.
  final pulumi.Input<List<ImagePipelineWorkflowParameter>>? parameters;
  /// Amazon Resource Name (ARN) of the Image Builder Workflow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workflowArn;

  /// Creates a new [ImagePipelineWorkflow].
  /// [onFailure] The action to take if the workflow fails. Must be one of `CONTINUE` or `ABORT`.
  /// [parallelGroup] The parallel group in which to run a test Workflow.
  /// [parameters] Configuration block for the workflow parameters. Detailed below.
  /// [workflowArn] Amazon Resource Name (ARN) of the Image Builder Workflow.
  const ImagePipelineWorkflow({
    this.onFailure,
    this.parallelGroup,
    this.parameters,
    required this.workflowArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?onFailure,
      'parallelGroup': ?parallelGroup,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ImagePipelineWorkflowParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ImagePipelineWorkflowParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workflowArn': workflowArn,
    };
  }

  factory ImagePipelineWorkflow.fromMap(Map<String, dynamic> map) {
    return ImagePipelineWorkflow(
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelGroup: (() { final guardedValue = map['parallelGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImagePipelineWorkflowParameter>(guardedValue, (value) => ImagePipelineWorkflowParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workflowArn: pulumi.Input.fromValue(map['workflowArn'] as String),
    );
  }
}
