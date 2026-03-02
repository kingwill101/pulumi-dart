// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineNotifications {
  /// The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline.
  final pulumi.Input<String>? completed;
  /// The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline.
  final pulumi.Input<String>? error;
  /// The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline.
  final pulumi.Input<String>? progressing;
  /// The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline.
  ///
  /// The `thumbnail_config` object specifies information about the Amazon S3 bucket in
  /// which you want Elastic Transcoder to save thumbnail files: which bucket to use,
  /// which users you want to have access to the files, the type of access you want
  /// users to have, and the storage class that you want to assign to the files. If
  /// you specify values for `content_config`, you must also specify values for
  /// `thumbnail_config` even if you don't want to create thumbnails. (You control
  /// whether to create thumbnails when you create a job. For more information, see
  /// ThumbnailPattern in the topic Create Job.) If you specify values for
  /// `content_config` and `thumbnail_config`, omit the OutputBucket object.
  final pulumi.Input<String>? warning;

  /// Creates a new [PipelineNotifications].
  /// [completed] The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline.
  /// [error] The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline.
  /// [progressing] The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline.
  /// [warning] The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline.
  PipelineNotifications({
    this.completed,
    this.error,
    this.progressing,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completed': ?completed,
      'error': ?error,
      'progressing': ?progressing,
      'warning': ?warning,
    };
  }

  factory PipelineNotifications.fromMap(Map<String, dynamic> map) {
    return PipelineNotifications(
      completed: map['completed'] == null ? null : (map['completed'] as String).input(),
      error: map['error'] == null ? null : (map['error'] as String).input(),
      progressing: map['progressing'] == null ? null : (map['progressing'] as String).input(),
      warning: map['warning'] == null ? null : (map['warning'] as String).input(),
    );
  }
}

