// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_artifact_config.dart';
import 'canary_run_config.dart';
import 'canary_schedule.dart';
import 'canary_timeline.dart';
import 'canary_vpc_config.dart';

/// Input properties used for looking up and filtering Canary resources.
class CanaryState {
  /// Amazon Resource Name (ARN) of the Canary.
  final pulumi.Input<String>? arn;
  /// configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  final pulumi.Input<CanaryArtifactConfig>? artifactConfig;
  /// Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  final pulumi.Input<String>? artifactS3Location;
  /// Specifies whether to also delete the Lambda functions and layers used by this canary. The default is `false`.
  final pulumi.Input<bool>? deleteLambda;
  /// ARN of the Lambda function that is used as your canary's engine.
  final pulumi.Input<String>? engineArn;
  /// ARN of the IAM role to be used to run the canary. see [AWS Docs](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CreateCanary.html#API_CreateCanary_RequestSyntax) for permissions needs for IAM Role.
  final pulumi.Input<String>? executionRoleArn;
  /// Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  final pulumi.Input<int>? failureRetentionPeriod;
  /// Entry point to use for the source code when running the canary. This value must end with the string `.handler` .
  final pulumi.Input<String>? handler;
  /// Name for this canary. Has a maximum length of 255 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for individual canary runs. Detailed below.
  final pulumi.Input<CanaryRunConfig>? runConfig;
  /// Runtime version to use for the canary. Versions change often so consult the [Amazon CloudWatch documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html) for the latest valid versions. Values include `syn-python-selenium-1.0`, `syn-nodejs-puppeteer-3.0`, `syn-nodejs-2.2`, `syn-nodejs-2.1`, `syn-nodejs-2.0`, and `syn-1.0`.
  final pulumi.Input<String>? runtimeVersion;
  /// Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with `zip_file`.**
  final pulumi.Input<String>? s3Bucket;
  /// S3 key of your script. **Conflicts with `zip_file`.**
  final pulumi.Input<String>? s3Key;
  /// S3 version ID of your script. **Conflicts with `zip_file`.**
  final pulumi.Input<String>? s3Version;
  /// Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CanarySchedule>? schedule;
  /// ARN of the Lambda layer where Synthetics stores the canary script code.
  final pulumi.Input<String>? sourceLocationArn;
  /// Whether to run or stop the canary.
  final pulumi.Input<bool>? startCanary;
  /// Canary status.
  final pulumi.Input<String>? status;
  /// Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  final pulumi.Input<int>? successRetentionPeriod;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.
  final pulumi.Input<List<CanaryTimeline>>? timelines;
  /// Configuration block. Detailed below.
  final pulumi.Input<CanaryVpcConfig>? vpcConfig;
  /// ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with `s3_bucket`, `s3_key`, and `s3_version`.**
  final pulumi.Input<String>? zipFile;

  /// Creates a new [CanaryState].
  /// [arn] Amazon Resource Name (ARN) of the Canary.
  /// [artifactConfig] configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  /// [artifactS3Location] Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  /// [deleteLambda] Specifies whether to also delete the Lambda functions and layers used by this canary. The default is `false`.
  /// [engineArn] ARN of the Lambda function that is used as your canary's engine.
  /// [executionRoleArn] ARN of the IAM role to be used to run the canary. see [AWS Docs](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CreateCanary.html#API_CreateCanary_RequestSyntax) for permissions needs for IAM Role.
  /// [failureRetentionPeriod] Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  /// [handler] Entry point to use for the source code when running the canary. This value must end with the string `.handler` .
  /// [name] Name for this canary. Has a maximum length of 255 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runConfig] Configuration block for individual canary runs. Detailed below.
  /// [runtimeVersion] Runtime version to use for the canary. Versions change often so consult the [Amazon CloudWatch documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html) for the latest valid versions. Values include `syn-python-selenium-1.0`, `syn-nodejs-puppeteer-3.0`, `syn-nodejs-2.2`, `syn-nodejs-2.1`, `syn-nodejs-2.0`, and `syn-1.0`.
  /// [s3Bucket] Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with `zip_file`.**
  /// [s3Key] S3 key of your script. **Conflicts with `zip_file`.**
  /// [s3Version] S3 version ID of your script. **Conflicts with `zip_file`.**
  /// [schedule] Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below.
  /// [sourceLocationArn] ARN of the Lambda layer where Synthetics stores the canary script code.
  /// [startCanary] Whether to run or stop the canary.
  /// [status] Canary status.
  /// [successRetentionPeriod] Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timelines] Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.
  /// [vpcConfig] Configuration block. Detailed below.
  /// [zipFile] ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with `s3_bucket`, `s3_key`, and `s3_version`.**
  CanaryState({
    pulumi.Output<String>? arn,
    pulumi.Output<CanaryArtifactConfig>? artifactConfig,
    pulumi.Output<String>? artifactS3Location,
    pulumi.Output<bool>? deleteLambda,
    pulumi.Output<String>? engineArn,
    pulumi.Output<String>? executionRoleArn,
    pulumi.Output<int>? failureRetentionPeriod,
    pulumi.Output<String>? handler,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<CanaryRunConfig>? runConfig,
    pulumi.Output<String>? runtimeVersion,
    pulumi.Output<String>? s3Bucket,
    pulumi.Output<String>? s3Key,
    pulumi.Output<String>? s3Version,
    pulumi.Output<CanarySchedule>? schedule,
    pulumi.Output<String>? sourceLocationArn,
    pulumi.Output<bool>? startCanary,
    pulumi.Output<String>? status,
    pulumi.Output<int>? successRetentionPeriod,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<CanaryTimeline>>? timelines,
    pulumi.Output<CanaryVpcConfig>? vpcConfig,
    pulumi.Output<String>? zipFile,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      artifactConfig = pulumi.Input.asOptionalInput<CanaryArtifactConfig>(artifactConfig),
      artifactS3Location = pulumi.Input.asOptionalInput<String>(artifactS3Location),
      deleteLambda = pulumi.Input.asOptionalInput<bool>(deleteLambda),
      engineArn = pulumi.Input.asOptionalInput<String>(engineArn),
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      failureRetentionPeriod = pulumi.Input.asOptionalInput<int>(failureRetentionPeriod),
      handler = pulumi.Input.asOptionalInput<String>(handler),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      runConfig = pulumi.Input.asOptionalInput<CanaryRunConfig>(runConfig),
      runtimeVersion = pulumi.Input.asOptionalInput<String>(runtimeVersion),
      s3Bucket = pulumi.Input.asOptionalInput<String>(s3Bucket),
      s3Key = pulumi.Input.asOptionalInput<String>(s3Key),
      s3Version = pulumi.Input.asOptionalInput<String>(s3Version),
      schedule = pulumi.Input.asOptionalInput<CanarySchedule>(schedule),
      sourceLocationArn = pulumi.Input.asOptionalInput<String>(sourceLocationArn),
      startCanary = pulumi.Input.asOptionalInput<bool>(startCanary),
      status = pulumi.Input.asOptionalInput<String>(status),
      successRetentionPeriod = pulumi.Input.asOptionalInput<int>(successRetentionPeriod),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timelines = pulumi.Input.asOptionalInput<List<CanaryTimeline>>(timelines),
      vpcConfig = pulumi.Input.asOptionalInput<CanaryVpcConfig>(vpcConfig),
      zipFile = pulumi.Input.asOptionalInput<String>(zipFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'artifactConfig': ?pulumi.Input.mapOptionalInputValue<CanaryArtifactConfig, Map<String, dynamic>>(artifactConfig, (value) => value.toMap()),
      'artifactS3Location': ?artifactS3Location,
      'deleteLambda': ?deleteLambda,
      'engineArn': ?engineArn,
      'executionRoleArn': ?executionRoleArn,
      'failureRetentionPeriod': ?failureRetentionPeriod,
      'handler': ?handler,
      'name': ?name,
      'region': ?region,
      'runConfig': ?pulumi.Input.mapOptionalInputValue<CanaryRunConfig, Map<String, dynamic>>(runConfig, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3Version': ?s3Version,
      'schedule': ?pulumi.Input.mapOptionalInputValue<CanarySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sourceLocationArn': ?sourceLocationArn,
      'startCanary': ?startCanary,
      'status': ?status,
      'successRetentionPeriod': ?successRetentionPeriod,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timelines': ?pulumi.Input.mapOptionalInputValue<List<CanaryTimeline>, List<Map<String, dynamic>>>(timelines, (value) => pulumi.Input.encodeList<CanaryTimeline, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<CanaryVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
      'zipFile': ?zipFile,
    };
  }

  factory CanaryState.fromMap(Map<String, dynamic> map) {
    return CanaryState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      artifactConfig: map['artifactConfig'] == null ? null : pulumi.Output.create<CanaryArtifactConfig>(CanaryArtifactConfig.fromMap((map['artifactConfig'] as Map).cast<String, dynamic>())),
      artifactS3Location: map['artifactS3Location'] == null ? null : pulumi.Output.create<String>(map['artifactS3Location'] as String),
      deleteLambda: map['deleteLambda'] == null ? null : pulumi.Output.create<bool>(map['deleteLambda'] as bool),
      engineArn: map['engineArn'] == null ? null : pulumi.Output.create<String>(map['engineArn'] as String),
      executionRoleArn: map['executionRoleArn'] == null ? null : pulumi.Output.create<String>(map['executionRoleArn'] as String),
      failureRetentionPeriod: map['failureRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['failureRetentionPeriod'] as int),
      handler: map['handler'] == null ? null : pulumi.Output.create<String>(map['handler'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      runConfig: map['runConfig'] == null ? null : pulumi.Output.create<CanaryRunConfig>(CanaryRunConfig.fromMap((map['runConfig'] as Map).cast<String, dynamic>())),
      runtimeVersion: map['runtimeVersion'] == null ? null : pulumi.Output.create<String>(map['runtimeVersion'] as String),
      s3Bucket: map['s3Bucket'] == null ? null : pulumi.Output.create<String>(map['s3Bucket'] as String),
      s3Key: map['s3Key'] == null ? null : pulumi.Output.create<String>(map['s3Key'] as String),
      s3Version: map['s3Version'] == null ? null : pulumi.Output.create<String>(map['s3Version'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<CanarySchedule>(CanarySchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      sourceLocationArn: map['sourceLocationArn'] == null ? null : pulumi.Output.create<String>(map['sourceLocationArn'] as String),
      startCanary: map['startCanary'] == null ? null : pulumi.Output.create<bool>(map['startCanary'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      successRetentionPeriod: map['successRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['successRetentionPeriod'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timelines: map['timelines'] == null ? null : pulumi.Output.create<List<CanaryTimeline>>(pulumi.Input.decodeList<CanaryTimeline>(map['timelines'], (value) => CanaryTimeline.fromMap((value as Map).cast<String, dynamic>()))),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<CanaryVpcConfig>(CanaryVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
      zipFile: map['zipFile'] == null ? null : pulumi.Output.create<String>(map['zipFile'] as String),
    );
  }
}

