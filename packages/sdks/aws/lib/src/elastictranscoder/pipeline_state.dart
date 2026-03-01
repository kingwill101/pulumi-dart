// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_content_config.dart';
import 'pipeline_content_config_permission.dart';
import 'pipeline_notifications.dart';
import 'pipeline_thumbnail_config.dart';
import 'pipeline_thumbnail_config_permission.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// The ARN of the Elastictranscoder pipeline.
  final pulumi.Input<String>? arn;
  /// The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  final pulumi.Input<String>? awsKmsKeyArn;
  /// The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  final pulumi.Input<PipelineContentConfig>? contentConfig;
  /// The permissions for the `content_config` object. (documented below)
  final pulumi.Input<List<PipelineContentConfigPermission>>? contentConfigPermissions;
  /// The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  final pulumi.Input<String>? inputBucket;
  /// The name of the pipeline. Maximum 40 characters
  final pulumi.Input<String>? name;
  /// The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  final pulumi.Input<PipelineNotifications>? notifications;
  /// The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  final pulumi.Input<String>? outputBucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  final pulumi.Input<String>? role;
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
  final pulumi.Input<List<PipelineThumbnailConfigPermission>>? thumbnailConfigPermissions;

  /// Creates a new [PipelineState].
  /// [arn] The ARN of the Elastictranscoder pipeline.
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
  PipelineState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsKmsKeyArn,
    pulumi.Output<PipelineContentConfig>? contentConfig,
    pulumi.Output<List<PipelineContentConfigPermission>>? contentConfigPermissions,
    pulumi.Output<String>? inputBucket,
    pulumi.Output<String>? name,
    pulumi.Output<PipelineNotifications>? notifications,
    pulumi.Output<String>? outputBucket,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
    pulumi.Output<PipelineThumbnailConfig>? thumbnailConfig,
    pulumi.Output<List<PipelineThumbnailConfigPermission>>? thumbnailConfigPermissions,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsKmsKeyArn = pulumi.Input.asOptionalInput<String>(awsKmsKeyArn),
      contentConfig = pulumi.Input.asOptionalInput<PipelineContentConfig>(contentConfig),
      contentConfigPermissions = pulumi.Input.asOptionalInput<List<PipelineContentConfigPermission>>(contentConfigPermissions),
      inputBucket = pulumi.Input.asOptionalInput<String>(inputBucket),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asOptionalInput<PipelineNotifications>(notifications),
      outputBucket = pulumi.Input.asOptionalInput<String>(outputBucket),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role),
      thumbnailConfig = pulumi.Input.asOptionalInput<PipelineThumbnailConfig>(thumbnailConfig),
      thumbnailConfigPermissions = pulumi.Input.asOptionalInput<List<PipelineThumbnailConfigPermission>>(thumbnailConfigPermissions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsKmsKeyArn': ?awsKmsKeyArn,
      'contentConfig': ?pulumi.Input.mapOptionalInputValue<PipelineContentConfig, Map<String, dynamic>>(contentConfig, (value) => value.toMap()),
      'contentConfigPermissions': ?pulumi.Input.mapOptionalInputValue<List<PipelineContentConfigPermission>, List<Map<String, dynamic>>>(contentConfigPermissions, (value) => pulumi.Input.encodeList<PipelineContentConfigPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputBucket': ?inputBucket,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<PipelineNotifications, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'outputBucket': ?outputBucket,
      'region': ?region,
      'role': ?role,
      'thumbnailConfig': ?pulumi.Input.mapOptionalInputValue<PipelineThumbnailConfig, Map<String, dynamic>>(thumbnailConfig, (value) => value.toMap()),
      'thumbnailConfigPermissions': ?pulumi.Input.mapOptionalInputValue<List<PipelineThumbnailConfigPermission>, List<Map<String, dynamic>>>(thumbnailConfigPermissions, (value) => pulumi.Input.encodeList<PipelineThumbnailConfigPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsKmsKeyArn: map['awsKmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['awsKmsKeyArn'] as String),
      contentConfig: map['contentConfig'] == null ? null : pulumi.Output.create<PipelineContentConfig>(PipelineContentConfig.fromMap((map['contentConfig'] as Map).cast<String, dynamic>())),
      contentConfigPermissions: map['contentConfigPermissions'] == null ? null : pulumi.Output.create<List<PipelineContentConfigPermission>>(pulumi.Input.decodeList<PipelineContentConfigPermission>(map['contentConfigPermissions'], (value) => PipelineContentConfigPermission.fromMap((value as Map).cast<String, dynamic>()))),
      inputBucket: map['inputBucket'] == null ? null : pulumi.Output.create<String>(map['inputBucket'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<PipelineNotifications>(PipelineNotifications.fromMap((map['notifications'] as Map).cast<String, dynamic>())),
      outputBucket: map['outputBucket'] == null ? null : pulumi.Output.create<String>(map['outputBucket'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      thumbnailConfig: map['thumbnailConfig'] == null ? null : pulumi.Output.create<PipelineThumbnailConfig>(PipelineThumbnailConfig.fromMap((map['thumbnailConfig'] as Map).cast<String, dynamic>())),
      thumbnailConfigPermissions: map['thumbnailConfigPermissions'] == null ? null : pulumi.Output.create<List<PipelineThumbnailConfigPermission>>(pulumi.Input.decodeList<PipelineThumbnailConfigPermission>(map['thumbnailConfigPermissions'], (value) => PipelineThumbnailConfigPermission.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

