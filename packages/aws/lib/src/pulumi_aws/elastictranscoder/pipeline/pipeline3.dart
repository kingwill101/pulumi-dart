import 'package:pulumi/pulumi.dart';
import '../pipeline_content_config/pipeline_content_config.dart';
import '../pipeline_content_config_permission/pipeline_content_config_permission.dart';
import '../pipeline_notifications/pipeline_notifications.dart';
import '../pipeline_thumbnail_config/pipeline_thumbnail_config.dart';
import '../pipeline_thumbnail_config_permission/pipeline_thumbnail_config_permission.dart';
import 'pipeline_args3.dart';

/// Provides an Elastic Transcoder pipeline resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS Elemental MediaConvert](https://aws.amazon.com/blogs/media/migrating-workflows-from-amazon-elastic-transcoder-to-aws-elemental-mediaconvert/) instead. AWS will [discontinue support for Amazon Elastic Transcoder](https://aws.amazon.com/blogs/media/support-for-amazon-elastic-transcoder-ending-soon/), effective November 13, 2025.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.elastictranscoder.Pipeline("bar", {
/// inputBucket: inputBucket.id,
/// name: "aws_elastictranscoder_pipeline_my_test_",
/// role: testRole.arn,
/// contentConfig: {
/// bucket: contentBucket.id,
/// storageClass: "Standard",
/// },
/// thumbnailConfig: {
/// bucket: thumbBucket.id,
/// storageClass: "Standard",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elastictranscoder.Pipeline("bar",
/// input_bucket=input_bucket["id"],
/// name="aws_elastictranscoder_pipeline_my_test_",
/// role=test_role["arn"],
/// content_config={
/// "bucket": content_bucket["id"],
/// "storage_class": "Standard",
/// },
/// thumbnail_config={
/// "bucket": thumb_bucket["id"],
/// "storage_class": "Standard",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bar = new Aws.ElasticTranscoder.Pipeline("bar", new()
/// {
/// InputBucket = inputBucket.Id,
/// Name = "aws_elastictranscoder_pipeline_my_test_",
/// Role = testRole.Arn,
/// ContentConfig = new Aws.ElasticTranscoder.Inputs.PipelineContentConfigArgs
/// {
/// Bucket = contentBucket.Id,
/// StorageClass = "Standard",
/// },
/// ThumbnailConfig = new Aws.ElasticTranscoder.Inputs.PipelineThumbnailConfigArgs
/// {
/// Bucket = thumbBucket.Id,
/// StorageClass = "Standard",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elastictranscoder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elastictranscoder.NewPipeline(ctx, "bar", &elastictranscoder.PipelineArgs{
/// InputBucket: pulumi.Any(inputBucket.Id),
/// Name:        pulumi.String("aws_elastictranscoder_pipeline_my_test_"),
/// Role:        pulumi.Any(testRole.Arn),
/// ContentConfig: &elastictranscoder.PipelineContentConfigArgs{
/// Bucket:       pulumi.Any(contentBucket.Id),
/// StorageClass: pulumi.String("Standard"),
/// },
/// ThumbnailConfig: &elastictranscoder.PipelineThumbnailConfigArgs{
/// Bucket:       pulumi.Any(thumbBucket.Id),
/// StorageClass: pulumi.String("Standard"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elastictranscoder.Pipeline;
/// import com.pulumi.aws.elastictranscoder.PipelineArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PipelineContentConfigArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PipelineThumbnailConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var bar = new Pipeline("bar", PipelineArgs.builder()
/// .inputBucket(inputBucket.id())
/// .name("aws_elastictranscoder_pipeline_my_test_")
/// .role(testRole.arn())
/// .contentConfig(PipelineContentConfigArgs.builder()
/// .bucket(contentBucket.id())
/// .storageClass("Standard")
/// .build())
/// .thumbnailConfig(PipelineThumbnailConfigArgs.builder()
/// .bucket(thumbBucket.id())
/// .storageClass("Standard")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:elastictranscoder:Pipeline
/// properties:
/// inputBucket: ${inputBucket.id}
/// name: aws_elastictranscoder_pipeline_my_test_
/// role: ${testRole.arn}
/// contentConfig:
/// bucket: ${contentBucket.id}
/// storageClass: Standard
/// thumbnailConfig:
/// bucket: ${thumbBucket.id}
/// storageClass: Standard
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Transcoder pipelines using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elastictranscoder/pipeline:Pipeline basic_pipeline 1407981661351-cttk8b
/// ```
class Pipeline3 extends CustomResource {
  /// The ARN of the Elastictranscoder pipeline.
  late final Output<String> arn;

  /// The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  late final Output<String?> awsKmsKeyArn;

  /// The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  late final Output<PipelineContentConfig> contentConfig;

  /// The permissions for the <span pulumi-lang-nodejs="`contentConfig`" pulumi-lang-dotnet="`ContentConfig`" pulumi-lang-go="`contentConfig`" pulumi-lang-python="`content_config`" pulumi-lang-yaml="`contentConfig`" pulumi-lang-java="`contentConfig`">`content_config`</span> object. (documented below)
  late final Output<List<PipelineContentConfigPermission>?>
      contentConfigPermissions;

  /// The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.
  late final Output<String> inputBucket;

  /// The name of the pipeline. Maximum 40 characters
  late final Output<String> name;

  /// The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)
  late final Output<PipelineNotifications?> notifications;

  /// The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files.
  late final Output<String> outputBucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.
  late final Output<String> role;

  /// The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)
  late final Output<PipelineThumbnailConfig> thumbnailConfig;

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
  late final Output<List<PipelineThumbnailConfigPermission>?>
      thumbnailConfigPermissions;

  Pipeline3(
    String name, {
    PipelineArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elastictranscoder/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsKmsKeyArn = Output.createUnknown<String?>();
    this.contentConfig = Output.createUnknown<PipelineContentConfig>();
    this.contentConfigPermissions =
        Output.createUnknown<List<PipelineContentConfigPermission>?>();
    this.inputBucket = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notifications = Output.createUnknown<PipelineNotifications?>();
    this.outputBucket = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
    this.thumbnailConfig = Output.createUnknown<PipelineThumbnailConfig>();
    this.thumbnailConfigPermissions =
        Output.createUnknown<List<PipelineThumbnailConfigPermission>?>();
  }
}
