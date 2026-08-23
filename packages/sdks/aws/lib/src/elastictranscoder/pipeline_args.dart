// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_content_config.dart';
import 'pipeline_content_config_permission.dart';
import 'pipeline_notifications.dart';
import 'pipeline_thumbnail_config.dart';
import 'pipeline_thumbnail_config_permission.dart';

/// {@template pulumi_elastictranscoder_pipeline_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_elastictranscoder_pipeline_pipeline_args_doc}
class PipelineArgs {
  /// The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  final pulumi.Input<String>? awsKmsKeyArn;
  /// The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  final pulumi.Input<PipelineContentConfig>? contentConfig;
  /// The permissions for the `contentConfig` object. (documented below)
  final pulumi.Input<List<PipelineContentConfigPermission>>? contentConfigPermissions;
  /// The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  final pulumi.Input<String> inputBucket;
  /// The name of the pipeline. Maximum 40 characters
  final pulumi.Input<String>? name;
  /// The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  final pulumi.Input<PipelineNotifications>? notifications;
  /// The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  final pulumi.Input<String>? outputBucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  final pulumi.Input<String> role;
  /// The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)
  final pulumi.Input<PipelineThumbnailConfig>? thumbnailConfig;
  /// The permissions for the `thumbnailConfig` object. (documented below)
  ///
  /// See ["Create Pipeline"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-pipeline.html) in the AWS docs for reference.
  ///
  /// The `contentConfig` object specifies information about the Amazon S3 bucket in
  /// which you want Elastic Transcoder to save transcoded files and playlists: which
  /// bucket to use, and the storage class that you want to assign to the files. If
  /// you specify values for `contentConfig`, you must also specify values for
  /// `thumbnailConfig`. If you specify values for `contentConfig` and
  /// `thumbnailConfig`, omit the `outputBucket` object.
  final pulumi.Input<List<PipelineThumbnailConfigPermission>>? thumbnailConfigPermissions;

  /// Creates a new [PipelineArgs].
  /// [awsKmsKeyArn] The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  /// [contentConfig] The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  /// [contentConfigPermissions] The permissions for the `contentConfig` object. (documented below)
  /// [inputBucket] The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  /// [name] The name of the pipeline. Maximum 40 characters
  /// [notifications] The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  /// [outputBucket] The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  /// [thumbnailConfig] The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)
  /// [thumbnailConfigPermissions] The permissions for the `thumbnailConfig` object. (documented below)
  const PipelineArgs({
    this.awsKmsKeyArn,
    this.contentConfig,
    this.contentConfigPermissions,
    required this.inputBucket,
    this.name,
    this.notifications,
    this.outputBucket,
    this.region,
    required this.role,
    this.thumbnailConfig,
    this.thumbnailConfigPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKmsKeyArn': ?awsKmsKeyArn,
      'contentConfig': ?pulumi.Input.mapOptionalInputValue<PipelineContentConfig, Map<String, dynamic>>(contentConfig, (value) => value.toMap()),
      'contentConfigPermissions': ?pulumi.Input.mapOptionalInputValue<List<PipelineContentConfigPermission>, List<Map<String, dynamic>>>(contentConfigPermissions, (value) => pulumi.Input.encodeList<PipelineContentConfigPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputBucket': inputBucket,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<PipelineNotifications, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'outputBucket': ?outputBucket,
      'region': ?region,
      'role': role,
      'thumbnailConfig': ?pulumi.Input.mapOptionalInputValue<PipelineThumbnailConfig, Map<String, dynamic>>(thumbnailConfig, (value) => value.toMap()),
      'thumbnailConfigPermissions': ?pulumi.Input.mapOptionalInputValue<List<PipelineThumbnailConfigPermission>, List<Map<String, dynamic>>>(thumbnailConfigPermissions, (value) => pulumi.Input.encodeList<PipelineThumbnailConfigPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      awsKmsKeyArn: (() { final guardedValue = map['awsKmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentConfig: (() { final guardedValue = map['contentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineContentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentConfigPermissions: (() { final guardedValue = map['contentConfigPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineContentConfigPermission>(guardedValue, (value) => PipelineContentConfigPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputBucket: pulumi.Input.fromValue(map['inputBucket'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputBucket: (() { final guardedValue = map['outputBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      thumbnailConfig: (() { final guardedValue = map['thumbnailConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineThumbnailConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thumbnailConfigPermissions: (() { final guardedValue = map['thumbnailConfigPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineThumbnailConfigPermission>(guardedValue, (value) => PipelineThumbnailConfigPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
