// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration.dart';
import 'application_cloudwatch_logging_options.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The application's configuration
  final pulumi.Input<ApplicationApplicationConfiguration>? applicationConfiguration;
  /// The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  final pulumi.Input<String>? applicationMode;
  /// The ARN of the application.
  final pulumi.Input<String>? arn;
  /// A CloudWatch log stream to monitor application configuration errors.
  final pulumi.Input<ApplicationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The current timestamp when the application was created.
  final pulumi.Input<String>? createTimestamp;
  /// A summary description of the application.
  final pulumi.Input<String>? description;
  /// Whether to force stop an unresponsive Flink-based application.
  final pulumi.Input<bool>? forceStop;
  /// The current timestamp when the application was last updated.
  final pulumi.Input<String>? lastUpdateTimestamp;
  /// The name of the application.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  final pulumi.Input<String>? runtimeEnvironment;
  /// The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  final pulumi.Input<String>? serviceExecutionRole;
  /// Whether to start or stop the application.
  final pulumi.Input<bool>? startApplication;
  /// The status of the application.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The current application version. Kinesis Data Analytics updates the `version_id` each time the application is updated.
  final pulumi.Input<int>? versionId;

  /// Creates a new [ApplicationState].
  /// [applicationConfiguration] The application's configuration
  /// [applicationMode] The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  /// [arn] The ARN of the application.
  /// [cloudwatchLoggingOptions] A CloudWatch log stream to monitor application configuration errors.
  /// [createTimestamp] The current timestamp when the application was created.
  /// [description] A summary description of the application.
  /// [forceStop] Whether to force stop an unresponsive Flink-based application.
  /// [lastUpdateTimestamp] The current timestamp when the application was last updated.
  /// [name] The name of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeEnvironment] The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  /// [serviceExecutionRole] The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  /// [startApplication] Whether to start or stop the application.
  /// [status] The status of the application.
  /// [tags] A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [versionId] The current application version. Kinesis Data Analytics updates the `version_id` each time the application is updated.
  ApplicationState({
    this.applicationConfiguration,
    this.applicationMode,
    this.arn,
    this.cloudwatchLoggingOptions,
    this.createTimestamp,
    this.description,
    this.forceStop,
    this.lastUpdateTimestamp,
    this.name,
    this.region,
    this.runtimeEnvironment,
    this.serviceExecutionRole,
    this.startApplication,
    this.status,
    this.tags,
    this.tagsAll,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfiguration, Map<String, dynamic>>(applicationConfiguration, (value) => value.toMap()),
      'applicationMode': ?applicationMode,
      'arn': ?arn,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<ApplicationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'createTimestamp': ?createTimestamp,
      'description': ?description,
      'forceStop': ?forceStop,
      'lastUpdateTimestamp': ?lastUpdateTimestamp,
      'name': ?name,
      'region': ?region,
      'runtimeEnvironment': ?runtimeEnvironment,
      'serviceExecutionRole': ?serviceExecutionRole,
      'startApplication': ?startApplication,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'versionId': ?versionId,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationConfiguration: map['applicationConfiguration'] == null ? null : ((ApplicationApplicationConfiguration.fromMap((map['applicationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      applicationMode: map['applicationMode'] == null ? null : ((map['applicationMode'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((ApplicationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      createTimestamp: map['createTimestamp'] == null ? null : ((map['createTimestamp'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      forceStop: map['forceStop'] == null ? null : ((map['forceStop'] as bool).input()).input(),
      lastUpdateTimestamp: map['lastUpdateTimestamp'] == null ? null : ((map['lastUpdateTimestamp'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      runtimeEnvironment: map['runtimeEnvironment'] == null ? null : ((map['runtimeEnvironment'] as String).input()).input(),
      serviceExecutionRole: map['serviceExecutionRole'] == null ? null : ((map['serviceExecutionRole'] as String).input()).input(),
      startApplication: map['startApplication'] == null ? null : ((map['startApplication'] as bool).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      versionId: map['versionId'] == null ? null : ((map['versionId'] as int).input()).input(),
    );
  }
}

