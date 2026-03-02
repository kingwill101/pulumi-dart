// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_artifact_config.dart';
import 'canary_run_config.dart';
import 'canary_schedule.dart';
import 'canary_vpc_config.dart';

/// {@template pulumi_synthetics_canary_canary_args_doc}
/// The set of arguments for Canary.
/// {@endtemplate}
/// {@macro pulumi_synthetics_canary_canary_args_doc}
class CanaryArgs {
  /// configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  final pulumi.Input<CanaryArtifactConfig>? artifactConfig;
  /// Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  final pulumi.Input<String> artifactS3Location;
  /// Specifies whether to also delete the Lambda functions and layers used by this canary. The default is `false`.
  final pulumi.Input<bool>? deleteLambda;
  /// ARN of the IAM role to be used to run the canary. see [AWS Docs](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CreateCanary.html#API_CreateCanary_RequestSyntax) for permissions needs for IAM Role.
  final pulumi.Input<String> executionRoleArn;
  /// Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  final pulumi.Input<int>? failureRetentionPeriod;
  /// Entry point to use for the source code when running the canary. This value must end with the string `.handler` .
  final pulumi.Input<String> handler;
  /// Name for this canary. Has a maximum length of 255 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for individual canary runs. Detailed below.
  final pulumi.Input<CanaryRunConfig>? runConfig;
  /// Runtime version to use for the canary. Versions change often so consult the [Amazon CloudWatch documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html) for the latest valid versions. Values include `syn-python-selenium-1.0`, `syn-nodejs-puppeteer-3.0`, `syn-nodejs-2.2`, `syn-nodejs-2.1`, `syn-nodejs-2.0`, and `syn-1.0`.
  final pulumi.Input<String> runtimeVersion;
  /// Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with `zip_file`.**
  final pulumi.Input<String>? s3Bucket;
  /// S3 key of your script. **Conflicts with `zip_file`.**
  final pulumi.Input<String>? s3Key;
  /// S3 version ID of your script. **Conflicts with `zip_file`.**
  final pulumi.Input<String>? s3Version;
  /// Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CanarySchedule> schedule;
  /// Whether to run or stop the canary.
  final pulumi.Input<bool>? startCanary;
  /// Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  final pulumi.Input<int>? successRetentionPeriod;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block. Detailed below.
  final pulumi.Input<CanaryVpcConfig>? vpcConfig;
  /// ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with `s3_bucket`, `s3_key`, and `s3_version`.**
  final pulumi.Input<String>? zipFile;

  /// Creates a new [CanaryArgs].
  /// [artifactConfig] configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  /// [artifactS3Location] Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  /// [deleteLambda] Specifies whether to also delete the Lambda functions and layers used by this canary. The default is `false`.
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
  /// [startCanary] Whether to run or stop the canary.
  /// [successRetentionPeriod] Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfig] Configuration block. Detailed below.
  /// [zipFile] ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with `s3_bucket`, `s3_key`, and `s3_version`.**
  CanaryArgs({
    this.artifactConfig,
    required this.artifactS3Location,
    this.deleteLambda,
    required this.executionRoleArn,
    this.failureRetentionPeriod,
    required this.handler,
    this.name,
    this.region,
    this.runConfig,
    required this.runtimeVersion,
    this.s3Bucket,
    this.s3Key,
    this.s3Version,
    required this.schedule,
    this.startCanary,
    this.successRetentionPeriod,
    this.tags,
    this.vpcConfig,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactConfig': ?pulumi.Input.mapOptionalInputValue<CanaryArtifactConfig, Map<String, dynamic>>(artifactConfig, (value) => value.toMap()),
      'artifactS3Location': artifactS3Location,
      'deleteLambda': ?deleteLambda,
      'executionRoleArn': executionRoleArn,
      'failureRetentionPeriod': ?failureRetentionPeriod,
      'handler': handler,
      'name': ?name,
      'region': ?region,
      'runConfig': ?pulumi.Input.mapOptionalInputValue<CanaryRunConfig, Map<String, dynamic>>(runConfig, (value) => value.toMap()),
      'runtimeVersion': runtimeVersion,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3Version': ?s3Version,
      'schedule': pulumi.Input.mapInputValue<CanarySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startCanary': ?startCanary,
      'successRetentionPeriod': ?successRetentionPeriod,
      'tags': ?tags,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<CanaryVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
      'zipFile': ?zipFile,
    };
  }

  factory CanaryArgs.fromMap(Map<String, dynamic> map) {
    return CanaryArgs(
      artifactConfig: map['artifactConfig'] == null ? null : (CanaryArtifactConfig.fromMap((map['artifactConfig'] as Map).cast<String, dynamic>())).input(),
      artifactS3Location: (map['artifactS3Location'] as String).input(),
      deleteLambda: map['deleteLambda'] == null ? null : (map['deleteLambda'] as bool).input(),
      executionRoleArn: (map['executionRoleArn'] as String).input(),
      failureRetentionPeriod: map['failureRetentionPeriod'] == null ? null : (map['failureRetentionPeriod'] as int).input(),
      handler: (map['handler'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      runConfig: map['runConfig'] == null ? null : (CanaryRunConfig.fromMap((map['runConfig'] as Map).cast<String, dynamic>())).input(),
      runtimeVersion: (map['runtimeVersion'] as String).input(),
      s3Bucket: map['s3Bucket'] == null ? null : (map['s3Bucket'] as String).input(),
      s3Key: map['s3Key'] == null ? null : (map['s3Key'] as String).input(),
      s3Version: map['s3Version'] == null ? null : (map['s3Version'] as String).input(),
      schedule: (CanarySchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      startCanary: map['startCanary'] == null ? null : (map['startCanary'] as bool).input(),
      successRetentionPeriod: map['successRetentionPeriod'] == null ? null : (map['successRetentionPeriod'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (CanaryVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())).input(),
      zipFile: map['zipFile'] == null ? null : (map['zipFile'] as String).input(),
    );
  }
}

