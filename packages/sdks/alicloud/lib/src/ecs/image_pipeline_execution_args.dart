// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_image_pipeline_execution_image_pipeline_execution_args_doc}
/// The set of arguments for ImagePipelineExecution.
/// {@endtemplate}
/// {@macro pulumi_ecs_image_pipeline_execution_image_pipeline_execution_args_doc}
class ImagePipelineExecutionArgs {
  /// The ID of the image template.
  final pulumi.Input<String> imagePipelineId;
  /// The status of the image build task. Valid values:
  /// - CANCELLED: canceled. The build process has been canceled.
  final pulumi.Input<String>? status;

  /// Creates a new [ImagePipelineExecutionArgs].
  /// [imagePipelineId] The ID of the image template.
  /// [status] The status of the image build task. Valid values:
  ImagePipelineExecutionArgs({
    required this.imagePipelineId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagePipelineId': imagePipelineId,
      'status': ?status,
    };
  }

  factory ImagePipelineExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ImagePipelineExecutionArgs(
      imagePipelineId: pulumi.Input.fromValue(map['imagePipelineId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

