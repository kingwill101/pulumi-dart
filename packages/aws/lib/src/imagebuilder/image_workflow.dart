// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_workflow_parameter.dart';

class ImageWorkflow {
  /// The action to take if the workflow fails. Must be one of `CONTINUE` or `ABORT`.
  final String? onFailure;
  /// The parallel group in which to run a test Workflow.
  final String? parallelGroup;
  /// Configuration block for the workflow parameters. Detailed below.
  final List<ImageWorkflowParameter>? parameters;
  /// Amazon Resource Name (ARN) of the Image Builder Workflow.
  ///
  /// The following arguments are optional:
  final String workflowArn;

  /// Creates a new [ImageWorkflow].
  /// [onFailure] The action to take if the workflow fails. Must be one of `CONTINUE` or `ABORT`.
  /// [parallelGroup] The parallel group in which to run a test Workflow.
  /// [parameters] Configuration block for the workflow parameters. Detailed below.
  /// [workflowArn] Amazon Resource Name (ARN) of the Image Builder Workflow.
  ImageWorkflow({
    this.onFailure,
    this.parallelGroup,
    this.parameters,
    required this.workflowArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?onFailure,
      'parallelGroup': ?parallelGroup,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ImageWorkflowParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'workflowArn': workflowArn,
    };
  }

  factory ImageWorkflow.fromMap(Map<String, dynamic> map) {
    return ImageWorkflow(
      onFailure: map['onFailure'] == null ? null : map['onFailure'] as String,
      parallelGroup: map['parallelGroup'] == null ? null : map['parallelGroup'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ImageWorkflowParameter>(map['parameters'], (value) => ImageWorkflowParameter.fromMap((value as Map).cast<String, dynamic>())),
      workflowArn: map['workflowArn'] as String,
    );
  }
}

