// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../image_pipeline_workflow_parameter/image_pipeline_workflow_parameter.dart';

class ImagePipelineWorkflow {
  /// The action to take if the workflow fails. Must be one of `CONTINUE` or `ABORT`.
  final String? onFailure;

  /// The parallel group in which to run a test Workflow.
  final String? parallelGroup;

  /// Configuration block for the workflow parameters. Detailed below.
  final List<ImagePipelineWorkflowParameter>? parameters;

  /// Amazon Resource Name (ARN) of the Image Builder Workflow.
  ///
  /// The following arguments are optional:
  final String workflowArn;

  ImagePipelineWorkflow({
    this.onFailure,
    this.parallelGroup,
    this.parameters,
    required this.workflowArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onFailureValue = onFailure;
    if (onFailureValue != null) {
      map['onFailure'] = onFailureValue;
    }
    final parallelGroupValue = parallelGroup;
    if (parallelGroupValue != null) {
      map['parallelGroup'] = parallelGroupValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<ImagePipelineWorkflowParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    map['workflowArn'] = workflowArn;
    return map;
  }

  factory ImagePipelineWorkflow.fromMap(Map<String, dynamic> map) {
    return ImagePipelineWorkflow(
      onFailure: map['onFailure'] == null ? null : map['onFailure'] as String,
      parallelGroup:
          map['parallelGroup'] == null ? null : map['parallelGroup'] as String,
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<ImagePipelineWorkflowParameter>(
              map['parameters'],
              (value) => ImagePipelineWorkflowParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workflowArn: map['workflowArn'] as String,
    );
  }
}
