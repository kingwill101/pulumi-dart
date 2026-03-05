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
    this.createTime,
    this.imagePipelineId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'imagePipelineId': ?imagePipelineId,
      'status': ?status,
    };
  }

  factory ImagePipelineExecutionState.fromMap(Map<String, dynamic> map) {
    return ImagePipelineExecutionState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagePipelineId: (() { final guardedValue = map['imagePipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

