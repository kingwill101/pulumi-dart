// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImagePipelineExecution resources.
class ImagePipelineExecutionState {
  /// The time when the image build task was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the image template.
  final pulumi.Input<String>? imagePipelineId;
  /// The status of the image build task. Valid values:
  /// - CANCELLED: canceled. The build process has been canceled.
  final pulumi.Input<String>? status;

  /// Creates a new [ImagePipelineExecutionState].
  /// [createTime] The time when the image build task was created.
  /// [imagePipelineId] The ID of the image template.
  /// [status] The status of the image build task. Valid values:
  ImagePipelineExecutionState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? imagePipelineId,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      imagePipelineId = pulumi.Input.asOptionalInput<String>(imagePipelineId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'imagePipelineId': ?imagePipelineId,
      'status': ?status,
    };
  }

  factory ImagePipelineExecutionState.fromMap(Map<String, dynamic> map) {
    return ImagePipelineExecutionState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      imagePipelineId: map['imagePipelineId'] == null ? null : pulumi.Output.create<String>(map['imagePipelineId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

