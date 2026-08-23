import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_content_config.dart';
import 'pipeline_notifications.dart';
import 'pipeline_state.dart';
import 'pipeline_thumbnail_config.dart';

/// Provides an Elastic Transcoder pipeline resource.
///
/// &gt; **Warning:** This resource is deprecated. Use [AWS Elemental MediaConvert](https://aws.amazon.com/blogs/media/migrating-workflows-from-amazon-elastic-transcoder-to-aws-elemental-mediaconvert/) instead. AWS will [discontinue support for Amazon Elastic Transcoder](https://aws.amazon.com/blogs/media/support-for-amazon-elastic-transcoder-ending-soon/), effective November 13, 2025.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.elastictranscoder.Pipeline("bar", {
///     inputBucket: inputBucket.id,
///     name: "aws_elastictranscoder_pipeline_my_test_",
///     role: testRole.arn,
///     contentConfig: {
///         bucket: contentBucket.id,
///         storageClass: "Standard",
///     },
///     thumbnailConfig: {
///         bucket: thumbBucket.id,
///         storageClass: "Standard",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elastictranscoder.Pipeline("bar",
///     input_bucket=input_bucket["id"],
///     name="aws_elastictranscoder_pipeline_my_test_",
///     role=test_role["arn"],
///     content_config={
///         "bucket": content_bucket["id"],
///         "storage_class": "Standard",
///     },
///     thumbnail_config={
///         "bucket": thumb_bucket["id"],
///         "storage_class": "Standard",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.ElasticTranscoder.Pipeline("bar", new()
///     {
///         InputBucket = inputBucket.Id,
///         Name = "aws_elastictranscoder_pipeline_my_test_",
///         Role = testRole.Arn,
///         ContentConfig = new Aws.ElasticTranscoder.Inputs.PipelineContentConfigArgs
///         {
///             Bucket = contentBucket.Id,
///             StorageClass = "Standard",
///         },
///         ThumbnailConfig = new Aws.ElasticTranscoder.Inputs.PipelineThumbnailConfigArgs
///         {
///             Bucket = thumbBucket.Id,
///             StorageClass = "Standard",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elastictranscoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elastictranscoder.NewPipeline(ctx, "bar", &elastictranscoder.PipelineArgs{
/// 			InputBucket: pulumi.Any(inputBucket.Id),
/// 			Name:        pulumi.String("aws_elastictranscoder_pipeline_my_test_"),
/// 			Role:        pulumi.Any(testRole.Arn),
/// 			ContentConfig: &elastictranscoder.PipelineContentConfigArgs{
/// 				Bucket:       pulumi.Any(contentBucket.Id),
/// 				StorageClass: pulumi.String("Standard"),
/// 			},
/// 			ThumbnailConfig: &elastictranscoder.PipelineThumbnailConfigArgs{
/// 				Bucket:       pulumi.Any(thumbBucket.Id),
/// 				StorageClass: pulumi.String("Standard"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elastictranscoder_pipeline" "bar" {
///   input_bucket = inputBucket.id
///   name         = "aws_elastictranscoder_pipeline_my_test_"
///   role         = testRole.arn
///   content_config = {
///     bucket        = contentBucket.id
///     storage_class = "Standard"
///   }
///   thumbnail_config = {
///     bucket        = thumbBucket.id
///     storage_class = "Standard"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bar = new Pipeline("bar", PipelineArgs.builder()
///             .inputBucket(inputBucket.id())
///             .name("aws_elastictranscoder_pipeline_my_test_")
///             .role(testRole.arn())
///             .contentConfig(PipelineContentConfigArgs.builder()
///                 .bucket(contentBucket.id())
///                 .storageClass("Standard")
///                 .build())
///             .thumbnailConfig(PipelineThumbnailConfigArgs.builder()
///                 .bucket(thumbBucket.id())
///                 .storageClass("Standard")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:elastictranscoder:Pipeline
///     properties:
///       inputBucket: ${inputBucket.id}
///       name: aws_elastictranscoder_pipeline_my_test_
///       role: ${testRole.arn}
///       contentConfig:
///         bucket: ${contentBucket.id}
///         storageClass: Standard
///       thumbnailConfig:
///         bucket: ${thumbBucket.id}
///         storageClass: Standard
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Transcoder pipelines using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elastictranscoder/pipeline:Pipeline basic_pipeline 1407981661351-cttk8b
/// ```
class Pipeline extends pulumi.CustomResource {
  /// The ARN of the Elastictranscoder pipeline.
  late final pulumi.Output<String> arn;
  /// The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.
  late final pulumi.Output<String?> awsKmsKeyArn;
  /// The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)
  late final pulumi.Output<PipelineContentConfig> contentConfig;
  /// The permissions for the `contentConfig` object. (documented below)
  late final pulumi.Output<List<Map<String, dynamic>>?> contentConfigPermissions;
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
  late final pulumi.Output<List<Map<String, dynamic>>?> thumbnailConfigPermissions;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_elastictranscoder_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elastictranscoder/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsKmsKeyArn = registerOutput<String?>('awsKmsKeyArn');
    contentConfig = registerOutput<PipelineContentConfig>('contentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineContentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentConfigPermissions = registerOutput<List<Map<String, dynamic>>?>('contentConfigPermissions');
    inputBucket = registerOutput<String>('inputBucket');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<PipelineNotifications?>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineNotifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBucket = registerOutput<String>('outputBucket');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    thumbnailConfig = registerOutput<PipelineThumbnailConfig>('thumbnailConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineThumbnailConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbnailConfigPermissions = registerOutput<List<Map<String, dynamic>>?>('thumbnailConfigPermissions');
  }

  /// Gets an existing [Pipeline] resource's state with the given [name] and [id].
  static Pipeline get(
    String name,
    pulumi.Input<String> id, {
    PipelineState? state,
  }) {
    return Pipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elastictranscoder/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsKmsKeyArn = registerOutput<String?>('awsKmsKeyArn');
    contentConfig = registerOutput<PipelineContentConfig>('contentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineContentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentConfigPermissions = registerOutput<List<Map<String, dynamic>>?>('contentConfigPermissions');
    inputBucket = registerOutput<String>('inputBucket');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<PipelineNotifications?>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineNotifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outputBucket = registerOutput<String>('outputBucket');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    thumbnailConfig = registerOutput<PipelineThumbnailConfig>('thumbnailConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineThumbnailConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbnailConfigPermissions = registerOutput<List<Map<String, dynamic>>?>('thumbnailConfigPermissions');
  }
}
