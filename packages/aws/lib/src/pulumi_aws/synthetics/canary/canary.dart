import 'package:pulumi/pulumi.dart';
import '../canary_artifact_config/canary_artifact_config.dart';
import '../canary_run_config/canary_run_config.dart';
import '../canary_schedule/canary_schedule.dart';
import '../canary_timeline/canary_timeline.dart';
import '../canary_vpc_config/canary_vpc_config.dart';
import 'canary_args.dart';

/// Provides a Synthetics Canary resource.
///
/// > **NOTE:** When you create a canary, AWS creates supporting implicit resources. See the Amazon CloudWatch Synthetics documentation on [DeleteCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html) for a full list. Neither AWS nor this provider deletes these implicit resources automatically when the canary is deleted. Before deleting a canary, ensure you have all the information about the canary that you need to delete the implicit resources using the AWS Console, or AWS CLI.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const some = new aws.synthetics.Canary("some", {
/// name: "some-canary",
/// artifactS3Location: "s3://some-bucket/",
/// executionRoleArn: "some-role",
/// handler: "exports.handler",
/// zipFile: "test-fixtures/lambdatest.zip",
/// runtimeVersion: "syn-1.0",
/// schedule: {
/// expression: "rate(0 minute)",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// some = aws.synthetics.Canary("some",
/// name="some-canary",
/// artifact_s3_location="s3://some-bucket/",
/// execution_role_arn="some-role",
/// handler="exports.handler",
/// zip_file="test-fixtures/lambdatest.zip",
/// runtime_version="syn-1.0",
/// schedule={
/// "expression": "rate(0 minute)",
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
/// var some = new Aws.Synthetics.Canary("some", new()
/// {
/// Name = "some-canary",
/// ArtifactS3Location = "s3://some-bucket/",
/// ExecutionRoleArn = "some-role",
/// Handler = "exports.handler",
/// ZipFile = "test-fixtures/lambdatest.zip",
/// RuntimeVersion = "syn-1.0",
/// Schedule = new Aws.Synthetics.Inputs.CanaryScheduleArgs
/// {
/// Expression = "rate(0 minute)",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := synthetics.NewCanary(ctx, "some", &synthetics.CanaryArgs{
/// Name:               pulumi.String("some-canary"),
/// ArtifactS3Location: pulumi.String("s3://some-bucket/"),
/// ExecutionRoleArn:   pulumi.String("some-role"),
/// Handler:            pulumi.String("exports.handler"),
/// ZipFile:            pulumi.String("test-fixtures/lambdatest.zip"),
/// RuntimeVersion:     pulumi.String("syn-1.0"),
/// Schedule: &synthetics.CanaryScheduleArgs{
/// Expression: pulumi.String("rate(0 minute)"),
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
/// import com.pulumi.aws.synthetics.Canary;
/// import com.pulumi.aws.synthetics.CanaryArgs;
/// import com.pulumi.aws.synthetics.inputs.CanaryScheduleArgs;
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
/// var some = new Canary("some", CanaryArgs.builder()
/// .name("some-canary")
/// .artifactS3Location("s3://some-bucket/")
/// .executionRoleArn("some-role")
/// .handler("exports.handler")
/// .zipFile("test-fixtures/lambdatest.zip")
/// .runtimeVersion("syn-1.0")
/// .schedule(CanaryScheduleArgs.builder()
/// .expression("rate(0 minute)")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// some:
/// type: aws:synthetics:Canary
/// properties:
/// name: some-canary
/// artifactS3Location: s3://some-bucket/
/// executionRoleArn: some-role
/// handler: exports.handler
/// zipFile: test-fixtures/lambdatest.zip
/// runtimeVersion: syn-1.0
/// schedule:
/// expression: rate(0 minute)
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Synthetics Canaries using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:synthetics/canary:Canary some some-canary
/// ```
class Canary extends CustomResource {
  /// Amazon Resource Name (ARN) of the Canary.
  late final Output<String> arn;

  /// configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  late final Output<CanaryArtifactConfig?> artifactConfig;

  /// Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  late final Output<String> artifactS3Location;

  /// Specifies whether to also delete the Lambda functions and layers used by this canary. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> deleteLambda;

  /// ARN of the Lambda function that is used as your canary's engine.
  late final Output<String> engineArn;

  /// ARN of the IAM role to be used to run the canary. see [AWS Docs](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CreateCanary.html#API_CreateCanary_RequestSyntax) for permissions needs for IAM Role.
  late final Output<String> executionRoleArn;

  /// Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  late final Output<int?> failureRetentionPeriod;

  /// Entry point to use for the source code when running the canary. This value must end with the string `.handler` .
  late final Output<String> handler;

  /// Name for this canary. Has a maximum length of 255 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for individual canary runs. Detailed below.
  late final Output<CanaryRunConfig> runConfig;

  /// Runtime version to use for the canary. Versions change often so consult the [Amazon CloudWatch documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html) for the latest valid versions. Values include `syn-python-selenium-1.0`, `syn-nodejs-puppeteer-3.0`, `syn-nodejs-2.2`, `syn-nodejs-2.1`, `syn-nodejs-2.0`, and `syn-1.0`.
  late final Output<String> runtimeVersion;

  /// Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with <span pulumi-lang-nodejs="`zipFile`" pulumi-lang-dotnet="`ZipFile`" pulumi-lang-go="`zipFile`" pulumi-lang-python="`zip_file`" pulumi-lang-yaml="`zipFile`" pulumi-lang-java="`zipFile`">`zip_file`</span>.**
  late final Output<String?> s3Bucket;

  /// S3 key of your script. **Conflicts with <span pulumi-lang-nodejs="`zipFile`" pulumi-lang-dotnet="`ZipFile`" pulumi-lang-go="`zipFile`" pulumi-lang-python="`zip_file`" pulumi-lang-yaml="`zipFile`" pulumi-lang-java="`zipFile`">`zip_file`</span>.**
  late final Output<String?> s3Key;

  /// S3 version ID of your script. **Conflicts with <span pulumi-lang-nodejs="`zipFile`" pulumi-lang-dotnet="`ZipFile`" pulumi-lang-go="`zipFile`" pulumi-lang-python="`zip_file`" pulumi-lang-yaml="`zipFile`" pulumi-lang-java="`zipFile`">`zip_file`</span>.**
  late final Output<String?> s3Version;

  /// Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below.
  ///
  /// The following arguments are optional:
  late final Output<CanarySchedule> schedule;

  /// ARN of the Lambda layer where Synthetics stores the canary script code.
  late final Output<String> sourceLocationArn;

  /// Whether to run or stop the canary.
  late final Output<bool?> startCanary;

  /// Canary status.
  late final Output<String> status;

  /// Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  late final Output<int?> successRetentionPeriod;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.
  late final Output<List<CanaryTimeline>> timelines;

  /// Configuration block. Detailed below.
  late final Output<CanaryVpcConfig?> vpcConfig;

  /// ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>, <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span>, and <span pulumi-lang-nodejs="`s3Version`" pulumi-lang-dotnet="`S3Version`" pulumi-lang-go="`s3Version`" pulumi-lang-python="`s3_version`" pulumi-lang-yaml="`s3Version`" pulumi-lang-java="`s3Version`">`s3_version`</span>.**
  late final Output<String?> zipFile;

  Canary(
    String name, {
    CanaryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:synthetics/canary:Canary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.artifactConfig =
        registerOutput<CanaryArtifactConfig?>('artifactConfig');
    this.artifactS3Location = registerOutput<String>('artifactS3Location');
    this.deleteLambda = registerOutput<bool?>('deleteLambda');
    this.engineArn = registerOutput<String>('engineArn');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.failureRetentionPeriod =
        registerOutput<int?>('failureRetentionPeriod');
    this.handler = registerOutput<String>('handler');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.runConfig = registerOutput<CanaryRunConfig>('runConfig');
    this.runtimeVersion = registerOutput<String>('runtimeVersion');
    this.s3Bucket = registerOutput<String?>('s3Bucket');
    this.s3Key = registerOutput<String?>('s3Key');
    this.s3Version = registerOutput<String?>('s3Version');
    this.schedule = registerOutput<CanarySchedule>('schedule');
    this.sourceLocationArn = registerOutput<String>('sourceLocationArn');
    this.startCanary = registerOutput<bool?>('startCanary');
    this.status = registerOutput<String>('status');
    this.successRetentionPeriod =
        registerOutput<int?>('successRetentionPeriod');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timelines = registerOutput<List<CanaryTimeline>>('timelines');
    this.vpcConfig = registerOutput<CanaryVpcConfig?>('vpcConfig');
    this.zipFile = registerOutput<String?>('zipFile');
  }
}
