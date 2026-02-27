import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with `zip_file`.**
  late final pulumi.Output<String?> s3Bucket;

  /// S3 key of your script. **Conflicts with `zip_file`.**
  late final pulumi.Output<String?> s3Key;

  /// S3 version ID of your script. **Conflicts with `zip_file`.**
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

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.
  late final pulumi.Output<List<CanaryTimeline>> timelines;

  /// Configuration block. Detailed below.
  late final pulumi.Output<CanaryVpcConfig?> vpcConfig;

  /// ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with `s3_bucket`, `s3_key`, and `s3_version`.**
  late final pulumi.Output<String?> zipFile;

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
