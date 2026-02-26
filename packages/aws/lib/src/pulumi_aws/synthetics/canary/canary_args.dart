// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../canary_artifact_config/canary_artifact_config.dart';
import '../canary_run_config/canary_run_config.dart';
import '../canary_schedule/canary_schedule.dart';
import '../canary_vpc_config/canary_vpc_config.dart';

/// The set of arguments for Canary.
class CanaryArgs {
  /// configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config.
  final Input<CanaryArtifactConfig>? artifactConfig;

  /// Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
  final Input<String> artifactS3Location;

  /// Specifies whether to also delete the Lambda functions and layers used by this canary. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deleteLambda;

  /// ARN of the IAM role to be used to run the canary. see [AWS Docs](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CreateCanary.html#API_CreateCanary_RequestSyntax) for permissions needs for IAM Role.
  final Input<String> executionRoleArn;

  /// Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  final Input<int>? failureRetentionPeriod;

  /// Entry point to use for the source code when running the canary. This value must end with the string `.handler` .
  final Input<String> handler;

  /// Name for this canary. Has a maximum length of 255 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for individual canary runs. Detailed below.
  final Input<CanaryRunConfig>? runConfig;

  /// Runtime version to use for the canary. Versions change often so consult the [Amazon CloudWatch documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html) for the latest valid versions. Values include `syn-python-selenium-1.0`, `syn-nodejs-puppeteer-3.0`, `syn-nodejs-2.2`, `syn-nodejs-2.1`, `syn-nodejs-2.0`, and `syn-1.0`.
  final Input<String> runtimeVersion;

  /// Full bucket name which is used if your canary script is located in S3. The bucket must already exist. **Conflicts with <span pulumi-lang-nodejs="`zipFile`" pulumi-lang-dotnet="`ZipFile`" pulumi-lang-go="`zipFile`" pulumi-lang-python="`zip_file`" pulumi-lang-yaml="`zipFile`" pulumi-lang-java="`zipFile`">`zip_file`</span>.**
  final Input<String>? s3Bucket;

  /// S3 key of your script. **Conflicts with <span pulumi-lang-nodejs="`zipFile`" pulumi-lang-dotnet="`ZipFile`" pulumi-lang-go="`zipFile`" pulumi-lang-python="`zip_file`" pulumi-lang-yaml="`zipFile`" pulumi-lang-java="`zipFile`">`zip_file`</span>.**
  final Input<String>? s3Key;

  /// S3 version ID of your script. **Conflicts with <span pulumi-lang-nodejs="`zipFile`" pulumi-lang-dotnet="`ZipFile`" pulumi-lang-go="`zipFile`" pulumi-lang-python="`zip_file`" pulumi-lang-yaml="`zipFile`" pulumi-lang-java="`zipFile`">`zip_file`</span>.**
  final Input<String>? s3Version;

  /// Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<CanarySchedule> schedule;

  /// Whether to run or stop the canary.
  final Input<bool>? startCanary;

  /// Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.
  final Input<int>? successRetentionPeriod;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block. Detailed below.
  final Input<CanaryVpcConfig>? vpcConfig;

  /// ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 225KB. **Conflicts with <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>, <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span>, and <span pulumi-lang-nodejs="`s3Version`" pulumi-lang-dotnet="`S3Version`" pulumi-lang-go="`s3Version`" pulumi-lang-python="`s3_version`" pulumi-lang-yaml="`s3Version`" pulumi-lang-java="`s3Version`">`s3_version`</span>.**
  final Input<String>? zipFile;

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
    final map = <String, dynamic>{};
    final artifactConfigValue = artifactConfig;
    if (artifactConfigValue != null) {
      map['artifactConfig'] = Input.mapOptionalInputValue<CanaryArtifactConfig,
          Map<String, dynamic>>(artifactConfigValue, (value) => value.toMap());
    }
    map['artifactS3Location'] = artifactS3Location;
    final deleteLambdaValue = deleteLambda;
    if (deleteLambdaValue != null) {
      map['deleteLambda'] = deleteLambdaValue;
    }
    map['executionRoleArn'] = executionRoleArn;
    final failureRetentionPeriodValue = failureRetentionPeriod;
    if (failureRetentionPeriodValue != null) {
      map['failureRetentionPeriod'] = failureRetentionPeriodValue;
    }
    map['handler'] = handler;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final runConfigValue = runConfig;
    if (runConfigValue != null) {
      map['runConfig'] =
          Input.mapOptionalInputValue<CanaryRunConfig, Map<String, dynamic>>(
              runConfigValue, (value) => value.toMap());
    }
    map['runtimeVersion'] = runtimeVersion;
    final s3BucketValue = s3Bucket;
    if (s3BucketValue != null) {
      map['s3Bucket'] = s3BucketValue;
    }
    final s3KeyValue = s3Key;
    if (s3KeyValue != null) {
      map['s3Key'] = s3KeyValue;
    }
    final s3VersionValue = s3Version;
    if (s3VersionValue != null) {
      map['s3Version'] = s3VersionValue;
    }
    map['schedule'] = Input.mapInputValue<CanarySchedule, Map<String, dynamic>>(
        schedule, (value) => value.toMap());
    final startCanaryValue = startCanary;
    if (startCanaryValue != null) {
      map['startCanary'] = startCanaryValue;
    }
    final successRetentionPeriodValue = successRetentionPeriod;
    if (successRetentionPeriodValue != null) {
      map['successRetentionPeriod'] = successRetentionPeriodValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] =
          Input.mapOptionalInputValue<CanaryVpcConfig, Map<String, dynamic>>(
              vpcConfigValue, (value) => value.toMap());
    }
    final zipFileValue = zipFile;
    if (zipFileValue != null) {
      map['zipFile'] = zipFileValue;
    }
    return map;
  }

  factory CanaryArgs.fromMap(Map<String, dynamic> map) {
    return CanaryArgs(
      artifactConfig:
          Input.asOptionalInput<CanaryArtifactConfig>(map['artifactConfig']),
      artifactS3Location: Input.asInput<String>(map['artifactS3Location']),
      deleteLambda: Input.asOptionalInput<bool>(map['deleteLambda']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      failureRetentionPeriod:
          Input.asOptionalInput<int>(map['failureRetentionPeriod']),
      handler: Input.asInput<String>(map['handler']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      runConfig: Input.asOptionalInput<CanaryRunConfig>(map['runConfig']),
      runtimeVersion: Input.asInput<String>(map['runtimeVersion']),
      s3Bucket: Input.asOptionalInput<String>(map['s3Bucket']),
      s3Key: Input.asOptionalInput<String>(map['s3Key']),
      s3Version: Input.asOptionalInput<String>(map['s3Version']),
      schedule: Input.asInput<CanarySchedule>(map['schedule']),
      startCanary: Input.asOptionalInput<bool>(map['startCanary']),
      successRetentionPeriod:
          Input.asOptionalInput<int>(map['successRetentionPeriod']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig: Input.asOptionalInput<CanaryVpcConfig>(map['vpcConfig']),
      zipFile: Input.asOptionalInput<String>(map['zipFile']),
    );
  }
}
