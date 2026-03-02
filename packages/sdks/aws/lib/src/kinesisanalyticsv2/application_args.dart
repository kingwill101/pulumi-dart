// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration.dart';
import 'application_cloudwatch_logging_options.dart';

/// {@template pulumi_kinesisanalyticsv2_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_kinesisanalyticsv2_application_application_args_doc}
class ApplicationArgs {
  /// The application's configuration
  final pulumi.Input<ApplicationApplicationConfiguration>? applicationConfiguration;
  /// The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  final pulumi.Input<String>? applicationMode;
  /// A CloudWatch log stream to monitor application configuration errors.
  final pulumi.Input<ApplicationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// A summary description of the application.
  final pulumi.Input<String>? description;
  /// Whether to force stop an unresponsive Flink-based application.
  final pulumi.Input<bool>? forceStop;
  /// The name of the application.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  final pulumi.Input<String> runtimeEnvironment;
  /// The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  final pulumi.Input<String> serviceExecutionRole;
  /// Whether to start or stop the application.
  final pulumi.Input<bool>? startApplication;
  /// A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationConfiguration] The application's configuration
  /// [applicationMode] The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  /// [cloudwatchLoggingOptions] A CloudWatch log stream to monitor application configuration errors.
  /// [description] A summary description of the application.
  /// [forceStop] Whether to force stop an unresponsive Flink-based application.
  /// [name] The name of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeEnvironment] The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  /// [serviceExecutionRole] The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  /// [startApplication] Whether to start or stop the application.
  /// [tags] A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  ApplicationArgs({
    this.applicationConfiguration,
    this.applicationMode,
    this.cloudwatchLoggingOptions,
    this.description,
    this.forceStop,
    this.name,
    this.region,
    required this.runtimeEnvironment,
    required this.serviceExecutionRole,
    this.startApplication,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfiguration, Map<String, dynamic>>(applicationConfiguration, (value) => value.toMap()),
      'applicationMode': ?applicationMode,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<ApplicationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'description': ?description,
      'forceStop': ?forceStop,
      'name': ?name,
      'region': ?region,
      'runtimeEnvironment': runtimeEnvironment,
      'serviceExecutionRole': serviceExecutionRole,
      'startApplication': ?startApplication,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationConfiguration: map['applicationConfiguration'] == null ? null : ((ApplicationApplicationConfiguration.fromMap((map['applicationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      applicationMode: map['applicationMode'] == null ? null : ((map['applicationMode'] as String).input()).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((ApplicationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      forceStop: map['forceStop'] == null ? null : ((map['forceStop'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      runtimeEnvironment: (map['runtimeEnvironment'] as String).input(),
      serviceExecutionRole: (map['serviceExecutionRole'] as String).input(),
      startApplication: map['startApplication'] == null ? null : ((map['startApplication'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

