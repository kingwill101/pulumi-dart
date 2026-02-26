// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_content_config/pipeline_content_config.dart';
import '../pipeline_content_config_permission/pipeline_content_config_permission.dart';
import '../pipeline_notifications/pipeline_notifications.dart';
import '../pipeline_thumbnail_config/pipeline_thumbnail_config.dart';
import '../pipeline_thumbnail_config_permission/pipeline_thumbnail_config_permission.dart';

/// The set of arguments for Pipeline.
class PipelineArgs3 {
  /// The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  final Input<String>? awsKmsKeyArn;

  /// The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  final Input<PipelineContentConfig>? contentConfig;

  /// The permissions for the <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span> object. (documented below)
  final Input<List<PipelineContentConfigPermission>>? contentConfigPermissions;

  /// The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  final Input<String> inputBucket;

  /// The name of the pipeline. Maximum 40 characters
  final Input<String>? name;

  /// The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  final Input<PipelineNotifications>? notifications;

  /// The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  final Input<String>? outputBucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  final Input<String> role;

  /// The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)
  final Input<PipelineThumbnailConfig>? thumbnailConfig;

  /// The permissions for the <span pulumi-lang-nodejs="`thumbnailConfig`" pulumi-lang-dotnet="`ThumbnailConfig`" pulumi-lang-go="`thumbnailConfig`" pulumi-lang-python="`thumbnail_config`" pulumi-lang-yaml="`thumbnailConfig`" pulumi-lang-java="`thumbnailConfig`">`thumbnail_config`</span> object. (documented below)
  ///
  /// See ["Create Pipeline"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-pipeline.html) in the AWS docs for reference.
  ///
  /// The <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span> object specifies information about the Amazon S3 bucket in
  /// which you want Elastic Transcoder to save transcoded files and playlists: which
  /// bucket to use, and the storage class that you want to assign to the files. If
  /// you specify values for <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span>, you must also specify values for
  /// <span pulumi-lang-nodejs="`thumbnailConfig`" pulumi-lang-dotnet="`ThumbnailConfig`" pulumi-lang-go="`thumbnailConfig`" pulumi-lang-python="`thumbnail_config`" pulumi-lang-yaml="`thumbnailConfig`" pulumi-lang-java="`thumbnailConfig`">`thumbnail_config`</span>. If you specify values for <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span> and
  /// <span pulumi-lang-nodejs="`thumbnailConfig`" pulumi-lang-dotnet="`ThumbnailConfig`" pulumi-lang-go="`thumbnailConfig`" pulumi-lang-python="`thumbnail_config`" pulumi-lang-yaml="`thumbnailConfig`" pulumi-lang-java="`thumbnailConfig`">`thumbnail_config`</span>, omit the <span pulumi-lang-nodejs="`outputBucket`" pulumi-lang-dotnet="`OutputBucket`" pulumi-lang-go="`outputBucket`" pulumi-lang-python="`output_bucket`" pulumi-lang-yaml="`outputBucket`" pulumi-lang-java="`outputBucket`">`output_bucket`</span> object.
  final Input<List<PipelineThumbnailConfigPermission>>?
      thumbnailConfigPermissions;

  PipelineArgs3({
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
      map['contentConfig'] = Input.mapOptionalInputValue<PipelineContentConfig,
          Map<String, dynamic>>(contentConfigValue, (value) => value.toMap());
    }
    final contentConfigPermissionsValue = contentConfigPermissions;
    if (contentConfigPermissionsValue != null) {
      map['contentConfigPermissions'] = Input.mapOptionalInputValue<
              List<PipelineContentConfigPermission>,
              List<Map<String, dynamic>>>(
          contentConfigPermissionsValue,
          (value) => Input.encodeList<PipelineContentConfigPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['inputBucket'] = inputBucket;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationsValue = notifications;
    if (notificationsValue != null) {
      map['notifications'] = Input.mapOptionalInputValue<PipelineNotifications,
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
      map['thumbnailConfig'] = Input.mapOptionalInputValue<
          PipelineThumbnailConfig,
          Map<String, dynamic>>(thumbnailConfigValue, (value) => value.toMap());
    }
    final thumbnailConfigPermissionsValue = thumbnailConfigPermissions;
    if (thumbnailConfigPermissionsValue != null) {
      map['thumbnailConfigPermissions'] = Input.mapOptionalInputValue<
              List<PipelineThumbnailConfigPermission>,
              List<Map<String, dynamic>>>(
          thumbnailConfigPermissionsValue,
          (value) => Input.encodeList<PipelineThumbnailConfigPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory PipelineArgs3.fromMap(Map<String, dynamic> map) {
    return PipelineArgs3(
      awsKmsKeyArn: Input.asOptionalInput<String>(map['awsKmsKeyArn']),
      contentConfig:
          Input.asOptionalInput<PipelineContentConfig>(map['contentConfig']),
      contentConfigPermissions:
          Input.asOptionalInput<List<PipelineContentConfigPermission>>(
              map['contentConfigPermissions']),
      inputBucket: Input.asInput<String>(map['inputBucket']),
      name: Input.asOptionalInput<String>(map['name']),
      notifications:
          Input.asOptionalInput<PipelineNotifications>(map['notifications']),
      outputBucket: Input.asOptionalInput<String>(map['outputBucket']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
      thumbnailConfig: Input.asOptionalInput<PipelineThumbnailConfig>(
          map['thumbnailConfig']),
      thumbnailConfigPermissions:
          Input.asOptionalInput<List<PipelineThumbnailConfigPermission>>(
              map['thumbnailConfigPermissions']),
    );
  }
}
