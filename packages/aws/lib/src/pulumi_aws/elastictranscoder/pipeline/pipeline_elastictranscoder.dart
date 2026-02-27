import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_content_config/pipeline_content_config.dart';
import '../pipeline_content_config_permission/pipeline_content_config_permission.dart';
import '../pipeline_notifications/pipeline_notifications.dart';
import '../pipeline_thumbnail_config/pipeline_thumbnail_config.dart';
import '../pipeline_thumbnail_config_permission/pipeline_thumbnail_config_permission.dart';
import 'pipeline_elastictranscoder_args.dart';

/// Provides an Elastic Transcoder pipeline resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS Elemental MediaConvert](https://aws.amazon.com/blogs/media/migrating-workflows-from-amazon-elastic-transcoder-to-aws-elemental-mediaconvert/) instead. AWS will [discontinue support for Amazon Elastic Transcoder](https://aws.amazon.com/blogs/media/support-for-amazon-elastic-transcoder-ending-soon/), effective November 13, 2025.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Transcoder pipelines using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elastictranscoder/pipeline:Pipeline basic_pipeline 1407981661351-cttk8b
/// ```
class PipelineElastictranscoder extends pulumi.CustomResource {
  /// The ARN of the Elastictranscoder pipeline.
  late final pulumi.Output<String> arn;

  /// The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  late final pulumi.Output<String?> awsKmsKeyArn;

  /// The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  late final pulumi.Output<PipelineContentConfig> contentConfig;

  /// The permissions for the `content_config` object. (documented below)
  late final pulumi.Output<List<PipelineContentConfigPermission>?>
      contentConfigPermissions;

  /// The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  late final pulumi.Output<String> inputBucket;

  /// The name of the pipeline. Maximum 40 characters
  late final pulumi.Output<String> name;

  /// The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  late final pulumi.Output<PipelineNotifications?> notifications;

  /// The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  late final pulumi.Output<String> outputBucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  late final pulumi.Output<String> role;

  /// The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)
  late final pulumi.Output<PipelineThumbnailConfig> thumbnailConfig;

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
  late final pulumi.Output<List<PipelineThumbnailConfigPermission>?>
      thumbnailConfigPermissions;

  PipelineElastictranscoder(
    String name, {
    PipelineElastictranscoderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elastictranscoder/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsKmsKeyArn = registerOutput<String?>('awsKmsKeyArn');
    this.contentConfig = registerOutput<PipelineContentConfig>('contentConfig');
    this.contentConfigPermissions =
        registerOutput<List<PipelineContentConfigPermission>?>(
            'contentConfigPermissions');
    this.inputBucket = registerOutput<String>('inputBucket');
    this.name = registerOutput<String>('name');
    this.notifications =
        registerOutput<PipelineNotifications?>('notifications');
    this.outputBucket = registerOutput<String>('outputBucket');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.thumbnailConfig =
        registerOutput<PipelineThumbnailConfig>('thumbnailConfig');
    this.thumbnailConfigPermissions =
        registerOutput<List<PipelineThumbnailConfigPermission>?>(
            'thumbnailConfigPermissions');
  }
}
