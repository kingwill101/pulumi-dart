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

  /// The permissions for the `content_config` object. (documented below)
  final pulumi.Input<List<PipelineContentConfigPermission>>?
      contentConfigPermissions;

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

  /// The permissions for the `thumbnail_config` object. (documented below)
  ///
  /// See ["Create Pipeline"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-pipeline.html) in the AWS docs for reference.
  ///
  /// The `content_config` object specifies information about the Amazon S3 bucket in
  /// which you want Elastic Transcoder to save transcoded files and playlists: which
  /// bucket to use, and the storage class that you want to assign to the files. If
  /// you specify values for `content_config`, you must also specify values for
  /// `thumbnail_config`. If you specify values for `content_config` and
  /// `thumbnail_config`, omit the `output_bucket` object.
  final pulumi.Input<List<PipelineThumbnailConfigPermission>>?
      thumbnailConfigPermissions;

  /// Creates a new [PipelineArgs].
  /// [awsKmsKeyArn] The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  /// [contentConfig] The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  /// [contentConfigPermissions] The permissions for the `content_config` object. (documented below)
  /// [inputBucket] The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  /// [name] The name of the pipeline. Maximum 40 characters
  /// [notifications] The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  /// [outputBucket] The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  /// [thumbnailConfig] The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)
  /// [thumbnailConfigPermissions] The permissions for the `thumbnail_config` object. (documented below)
  PipelineArgs({
    String? awsKmsKeyArn,
    PipelineContentConfig? contentConfig,
    List<PipelineContentConfigPermission>? contentConfigPermissions,
    required String inputBucket,
    String? name,
    PipelineNotifications? notifications,
    String? outputBucket,
    String? region,
    required String role,
    PipelineThumbnailConfig? thumbnailConfig,
    List<PipelineThumbnailConfigPermission>? thumbnailConfigPermissions,
  })  : awsKmsKeyArn = pulumi.Input.asOptionalInput<String>(awsKmsKeyArn),
        contentConfig =
            pulumi.Input.asOptionalInput<PipelineContentConfig>(contentConfig),
        contentConfigPermissions =
            pulumi.Input.asOptionalInput<List<PipelineContentConfigPermission>>(
                contentConfigPermissions),
        inputBucket = pulumi.Input.asInput<String>(inputBucket),
        name = pulumi.Input.asOptionalInput<String>(name),
        notifications =
            pulumi.Input.asOptionalInput<PipelineNotifications>(notifications),
        outputBucket = pulumi.Input.asOptionalInput<String>(outputBucket),
        region = pulumi.Input.asOptionalInput<String>(region),
        role = pulumi.Input.asInput<String>(role),
        thumbnailConfig = pulumi.Input.asOptionalInput<PipelineThumbnailConfig>(
            thumbnailConfig),
        thumbnailConfigPermissions = pulumi.Input.asOptionalInput<
                List<PipelineThumbnailConfigPermission>>(
            thumbnailConfigPermissions);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsKmsKeyArnValue = awsKmsKeyArn;
    if (awsKmsKeyArnValue != null) {
      map['awsKmsKeyArn'] = awsKmsKeyArnValue;
    }
    final contentConfigValue = contentConfig;
    if (contentConfigValue != null) {
      map['contentConfig'] = pulumi.Input.mapOptionalInputValue<
          PipelineContentConfig,
          Map<String, dynamic>>(contentConfigValue, (value) => value.toMap());
    }
    final contentConfigPermissionsValue = contentConfigPermissions;
    if (contentConfigPermissionsValue != null) {
      map['contentConfigPermissions'] = pulumi.Input.mapOptionalInputValue<
              List<PipelineContentConfigPermission>,
              List<Map<String, dynamic>>>(
          contentConfigPermissionsValue,
          (value) => pulumi.Input.encodeList<PipelineContentConfigPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['inputBucket'] = inputBucket;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationsValue = notifications;
    if (notificationsValue != null) {
      map['notifications'] = pulumi.Input.mapOptionalInputValue<
          PipelineNotifications,
          Map<String, dynamic>>(notificationsValue, (value) => value.toMap());
    }
    final outputBucketValue = outputBucket;
    if (outputBucketValue != null) {
      map['outputBucket'] = outputBucketValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    final thumbnailConfigValue = thumbnailConfig;
    if (thumbnailConfigValue != null) {
      map['thumbnailConfig'] = pulumi.Input.mapOptionalInputValue<
          PipelineThumbnailConfig,
          Map<String, dynamic>>(thumbnailConfigValue, (value) => value.toMap());
    }
    final thumbnailConfigPermissionsValue = thumbnailConfigPermissions;
    if (thumbnailConfigPermissionsValue != null) {
      map['thumbnailConfigPermissions'] = pulumi.Input.mapOptionalInputValue<
              List<PipelineThumbnailConfigPermission>,
              List<Map<String, dynamic>>>(
          thumbnailConfigPermissionsValue,
          (value) => pulumi.Input.encodeList<PipelineThumbnailConfigPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      awsKmsKeyArn:
          map['awsKmsKeyArn'] == null ? null : map['awsKmsKeyArn'] as String,
      contentConfig: map['contentConfig'] == null
          ? null
          : PipelineContentConfig.fromMap(
              (map['contentConfig'] as Map).cast<String, dynamic>()),
      contentConfigPermissions: map['contentConfigPermissions'] == null
          ? null
          : pulumi.Input.decodeList<PipelineContentConfigPermission>(
              map['contentConfigPermissions'],
              (value) => PipelineContentConfigPermission.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputBucket: map['inputBucket'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notifications: map['notifications'] == null
          ? null
          : PipelineNotifications.fromMap(
              (map['notifications'] as Map).cast<String, dynamic>()),
      outputBucket:
          map['outputBucket'] == null ? null : map['outputBucket'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
      thumbnailConfig: map['thumbnailConfig'] == null
          ? null
          : PipelineThumbnailConfig.fromMap(
              (map['thumbnailConfig'] as Map).cast<String, dynamic>()),
      thumbnailConfigPermissions: map['thumbnailConfigPermissions'] == null
          ? null
          : pulumi.Input.decodeList<PipelineThumbnailConfigPermission>(
              map['thumbnailConfigPermissions'],
              (value) => PipelineThumbnailConfigPermission.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
