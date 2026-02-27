// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_content_config/pipeline_content_config.dart';
import '../pipeline_content_config_permission/pipeline_content_config_permission.dart';
import '../pipeline_notifications/pipeline_notifications.dart';
import '../pipeline_thumbnail_config/pipeline_thumbnail_config.dart';
import '../pipeline_thumbnail_config_permission/pipeline_thumbnail_config_permission.dart';

/// The set of arguments for Pipeline.
class PipelineElastictranscoderArgs {
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

  PipelineElastictranscoderArgs({
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

  factory PipelineElastictranscoderArgs.fromMap(Map<String, dynamic> map) {
    return PipelineElastictranscoderArgs(
      awsKmsKeyArn: pulumi.Input.asOptionalInput<String>(map['awsKmsKeyArn']),
      contentConfig: pulumi.Input.asOptionalInput<PipelineContentConfig>(
          map['contentConfig']),
      contentConfigPermissions:
          pulumi.Input.asOptionalInput<List<PipelineContentConfigPermission>>(
              map['contentConfigPermissions']),
      inputBucket: pulumi.Input.asInput<String>(map['inputBucket']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notifications: pulumi.Input.asOptionalInput<PipelineNotifications>(
          map['notifications']),
      outputBucket: pulumi.Input.asOptionalInput<String>(map['outputBucket']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
      thumbnailConfig: pulumi.Input.asOptionalInput<PipelineThumbnailConfig>(
          map['thumbnailConfig']),
      thumbnailConfigPermissions:
          pulumi.Input.asOptionalInput<List<PipelineThumbnailConfigPermission>>(
              map['thumbnailConfigPermissions']),
    );
  }
}
