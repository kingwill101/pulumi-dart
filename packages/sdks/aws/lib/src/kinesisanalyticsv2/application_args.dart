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
  final pulumi.Input<ApplicationApplicationConfiguration>?
  applicationConfiguration;

  /// The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  final pulumi.Input<String>? applicationMode;

  /// A CloudWatch log stream to monitor application configuration errors.
  final pulumi.Input<ApplicationCloudwatchLoggingOptions>?
  cloudwatchLoggingOptions;

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
      'applicationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationApplicationConfiguration,
            Map<String, dynamic>
          >(applicationConfiguration, (value) => value.toMap()),
      'applicationMode': ?applicationMode,
      'cloudwatchLoggingOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationCloudwatchLoggingOptions,
            Map<String, dynamic>
          >(cloudwatchLoggingOptions, (value) => value.toMap()),
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
      applicationConfiguration: (() {
        final guardedValue = map['applicationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationApplicationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      applicationMode: (() {
        final guardedValue = map['applicationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudwatchLoggingOptions: (() {
        final guardedValue = map['cloudwatchLoggingOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationCloudwatchLoggingOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceStop: (() {
        final guardedValue = map['forceStop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeEnvironment: pulumi.Input.fromValue(
        map['runtimeEnvironment'] as String,
      ),
      serviceExecutionRole: pulumi.Input.fromValue(
        map['serviceExecutionRole'] as String,
      ),
      startApplication: (() {
        final guardedValue = map['startApplication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
