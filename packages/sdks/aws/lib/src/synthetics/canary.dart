import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_args.dart';
import 'canary_artifact_config.dart';
import 'canary_run_config.dart';
import 'canary_schedule.dart';
import 'canary_state.dart';
import 'canary_vpc_config.dart';

/// Provides a Synthetics Canary resource.
///
/// &gt; **NOTE:** When you create a canary, AWS creates supporting implicit resources. See the Amazon CloudWatch Synthetics documentation on [DeleteCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html) for a full list. Neither AWS nor this provider deletes these implicit resources automatically when the canary is deleted. Before deleting a canary, ensure you have all the information about the canary that you need to delete the implicit resources using the AWS Console, or AWS CLI.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const some = new aws.synthetics.Canary("some", {
///     name: "some-canary",
///     artifactS3Location: "s3://some-bucket/",
///     executionRoleArn: "some-role",
///     handler: "exports.handler",
///     zipFile: "test-fixtures/lambdatest.zip",
///     runtimeVersion: "syn-1.0",
///     schedule: {
///         expression: "rate(0 minute)",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// some = aws.synthetics.Canary("some",
///     name="some-canary",
///     artifact_s3_location="s3://some-bucket/",
///     execution_role_arn="some-role",
///     handler="exports.handler",
///     zip_file="test-fixtures/lambdatest.zip",
///     runtime_version="syn-1.0",
///     schedule={
///         "expression": "rate(0 minute)",
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
///     var some = new Aws.Synthetics.Canary("some", new()
///     {
///         Name = "some-canary",
///         ArtifactS3Location = "s3://some-bucket/",
///         ExecutionRoleArn = "some-role",
///         Handler = "exports.handler",
///         ZipFile = "test-fixtures/lambdatest.zip",
///         RuntimeVersion = "syn-1.0",
///         Schedule = new Aws.Synthetics.Inputs.CanaryScheduleArgs
///         {
///             Expression = "rate(0 minute)",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.NewCanary(ctx, "some", &synthetics.CanaryArgs{
/// 			Name:               pulumi.String("some-canary"),
/// 			ArtifactS3Location: pulumi.String("s3://some-bucket/"),
/// 			ExecutionRoleArn:   pulumi.String("some-role"),
/// 			Handler:            pulumi.String("exports.handler"),
/// 			ZipFile:            pulumi.String("test-fixtures/lambdatest.zip"),
/// 			RuntimeVersion:     pulumi.String("syn-1.0"),
/// 			Schedule: &synthetics.CanaryScheduleArgs{
/// 				Expression: pulumi.String("rate(0 minute)"),
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
/// resource "aws_synthetics_canary" "some" {
///   name                 = "some-canary"
///   artifact_s3_location = "s3://some-bucket/"
///   execution_role_arn   = "some-role"
///   handler              = "exports.handler"
///   zip_file             = "test-fixtures/lambdatest.zip"
///   runtime_version      = "syn-1.0"
///   schedule = {
///     expression = "rate(0 minute)"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.synthetics.Canary;
/// import com.pulumi.aws.synthetics.CanaryArgs;
/// import com.pulumi.aws.synthetics.inputs.CanaryScheduleArgs;
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
///         var some = new Canary("some", CanaryArgs.builder()
///             .name("some-canary")
///             .artifactS3Location("s3://some-bucket/")
///             .executionRoleArn("some-role")
///             .handler("exports.handler")
///             .zipFile("test-fixtures/lambdatest.zip")
///             .runtimeVersion("syn-1.0")
///             .schedule(CanaryScheduleArgs.builder()
///                 .expression("rate(0 minute)")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   some:
///     type: aws:synthetics:Canary
///     properties:
///       name: some-canary
///       artifactS3Location: s3://some-bucket/
///       executionRoleArn: some-role
///       handler: exports.handler
///       zipFile: test-fixtures/lambdatest.zip
///       runtimeVersion: syn-1.0
///       schedule:
///         expression: rate(0 minute)
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Synthetics Canaries using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:synthetics/canary:Canary some some-canary
/// ```
class Canary extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Canary.
  late final pulumi.Output<String> arn;
  /// configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  late final pulumi.Output<CanaryArtifactConfig?> artifactConfig;
  /// Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  late final pulumi.Output<String> artifactS3Location;
  /// Specifies whether to also delete the Lambda functions and layers used by this canary. The default is `false`.
  late final pulumi.Output<bool?> deleteLambda;
  /// ARN of the Lambda function that is used as your canary's engine.
  late final pulumi.Output<String> engineArn;
  /// ARN of the IAM role to be used to run the canary. see [AWS Docs](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CreateCanary.html#API_CreateCanary_RequestSyntax) for permissions needs for IAM Role.
  late final pulumi.Output<String> executionRoleArn;
  /// Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  late final pulumi.Output<int?> failureRetentionPeriod;
  /// Entry point to use for the source code when running the canary. This value must end with the string `.handler` .
  late final pulumi.Output<String> handler;
  /// Name for this canary. Has a maximum length of 255 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for individual canary runs. Detailed below.
  late final pulumi.Output<CanaryRunConfig> runConfig;
  /// Runtime version to use for the canary. Versions change often so consult the [Amazon CloudWatch documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html) for the latest valid versions. Values include `syn-python-selenium-1.0`, `syn-nodejs-puppeteer-3.0`, `syn-nodejs-2.2`, `syn-nodejs-2.1`, `syn-nodejs-2.0`, and `syn-1.0`.
  late final pulumi.Output<String> runtimeVersion;
  /// Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with `zipFile`.**
  late final pulumi.Output<String?> s3Bucket;
  /// S3 key of your script. **Conflicts with `zipFile`.**
  late final pulumi.Output<String?> s3Key;
  /// S3 version ID of your script. **Conflicts with `zipFile`.**
  late final pulumi.Output<String?> s3Version;
  /// Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<CanarySchedule> schedule;
  /// ARN of the Lambda layer where Synthetics stores the canary script code.
  late final pulumi.Output<String> sourceLocationArn;
  /// Whether to run or stop the canary.
  late final pulumi.Output<bool?> startCanary;
  /// Canary status.
  late final pulumi.Output<String> status;
  /// Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  late final pulumi.Output<int?> successRetentionPeriod;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.
  late final pulumi.Output<List<Map<String, dynamic>>> timelines;
  /// Configuration block. Detailed below.
  late final pulumi.Output<CanaryVpcConfig?> vpcConfig;
  /// ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with `s3Bucket`, `s3Key`, and `s3Version`.**
  late final pulumi.Output<String?> zipFile;

  /// Creates a new [Canary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Canary]. {@macro pulumi_synthetics_canary_canary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Canary(
    String name, {
    CanaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:synthetics/canary:Canary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    artifactConfig = registerOutput<CanaryArtifactConfig?>('artifactConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanaryArtifactConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    artifactS3Location = registerOutput<String>('artifactS3Location');
    deleteLambda = registerOutput<bool?>('deleteLambda');
    engineArn = registerOutput<String>('engineArn');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    failureRetentionPeriod = registerOutput<int?>('failureRetentionPeriod');
    handler = registerOutput<String>('handler');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    runConfig = registerOutput<CanaryRunConfig>('runConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanaryRunConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimeVersion = registerOutput<String>('runtimeVersion');
    s3Bucket = registerOutput<String?>('s3Bucket');
    s3Key = registerOutput<String?>('s3Key');
    s3Version = registerOutput<String?>('s3Version');
    schedule = registerOutput<CanarySchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanarySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceLocationArn = registerOutput<String>('sourceLocationArn');
    startCanary = registerOutput<bool?>('startCanary');
    status = registerOutput<String>('status');
    successRetentionPeriod = registerOutput<int?>('successRetentionPeriod');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timelines = registerOutput<List<Map<String, dynamic>>>('timelines');
    vpcConfig = registerOutput<CanaryVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanaryVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zipFile = registerOutput<String?>('zipFile');
  }

  /// Gets an existing [Canary] resource's state with the given [name] and [id].
  static Canary get(
    String name,
    pulumi.Input<String> id, {
    CanaryState? state,
  }) {
    return Canary._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Canary._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:synthetics/canary:Canary',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    artifactConfig = registerOutput<CanaryArtifactConfig?>('artifactConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanaryArtifactConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    artifactS3Location = registerOutput<String>('artifactS3Location');
    deleteLambda = registerOutput<bool?>('deleteLambda');
    engineArn = registerOutput<String>('engineArn');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    failureRetentionPeriod = registerOutput<int?>('failureRetentionPeriod');
    handler = registerOutput<String>('handler');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    runConfig = registerOutput<CanaryRunConfig>('runConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanaryRunConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimeVersion = registerOutput<String>('runtimeVersion');
    s3Bucket = registerOutput<String?>('s3Bucket');
    s3Key = registerOutput<String?>('s3Key');
    s3Version = registerOutput<String?>('s3Version');
    schedule = registerOutput<CanarySchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanarySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceLocationArn = registerOutput<String>('sourceLocationArn');
    startCanary = registerOutput<bool?>('startCanary');
    status = registerOutput<String>('status');
    successRetentionPeriod = registerOutput<int?>('successRetentionPeriod');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timelines = registerOutput<List<Map<String, dynamic>>>('timelines');
    vpcConfig = registerOutput<CanaryVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CanaryVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zipFile = registerOutput<String?>('zipFile');
  }
}
