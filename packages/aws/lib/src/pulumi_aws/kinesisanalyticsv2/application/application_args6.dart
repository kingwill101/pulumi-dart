// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_application_configuration/application_application_configuration.dart';
import '../application_cloudwatch_logging_options/application_cloudwatch_logging_options.dart';

/// The set of arguments for Application.
class ApplicationArgs6 {
  /// The application's configuration
  final Input<ApplicationApplicationConfiguration>? applicationConfiguration;

  /// The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  final Input<String>? applicationMode;

  /// A CloudWatch log stream to monitor application configuration errors.
  final Input<ApplicationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;

  /// A summary description of the application.
  final Input<String>? description;

  /// Whether to force stop an unresponsive Flink-based application.
  final Input<bool>? forceStop;

  /// The name of the application.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  final Input<String> runtimeEnvironment;

  /// The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  final Input<String> serviceExecutionRole;

  /// Whether to start or stop the application.
  final Input<bool>? startApplication;

  /// A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final Input<Map<String, String>>? tags;

  ApplicationArgs6({
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
    final map = <String, dynamic>{};
    final applicationConfigurationValue = applicationConfiguration;
    if (applicationConfigurationValue != null) {
      map['applicationConfiguration'] = Input.mapOptionalInputValue<
              ApplicationApplicationConfiguration, Map<String, dynamic>>(
          applicationConfigurationValue, (value) => value.toMap());
    }
    final applicationModeValue = applicationMode;
    if (applicationModeValue != null) {
      map['applicationMode'] = applicationModeValue;
    }
    final cloudwatchLoggingOptionsValue = cloudwatchLoggingOptions;
    if (cloudwatchLoggingOptionsValue != null) {
      map['cloudwatchLoggingOptions'] = Input.mapOptionalInputValue<
              ApplicationCloudwatchLoggingOptions, Map<String, dynamic>>(
          cloudwatchLoggingOptionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceStopValue = forceStop;
    if (forceStopValue != null) {
      map['forceStop'] = forceStopValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['runtimeEnvironment'] = runtimeEnvironment;
    map['serviceExecutionRole'] = serviceExecutionRole;
    final startApplicationValue = startApplication;
    if (startApplicationValue != null) {
      map['startApplication'] = startApplicationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ApplicationArgs6.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs6(
      applicationConfiguration:
          Input.asOptionalInput<ApplicationApplicationConfiguration>(
              map['applicationConfiguration']),
      applicationMode: Input.asOptionalInput<String>(map['applicationMode']),
      cloudwatchLoggingOptions:
          Input.asOptionalInput<ApplicationCloudwatchLoggingOptions>(
              map['cloudwatchLoggingOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      forceStop: Input.asOptionalInput<bool>(map['forceStop']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      runtimeEnvironment: Input.asInput<String>(map['runtimeEnvironment']),
      serviceExecutionRole: Input.asInput<String>(map['serviceExecutionRole']),
      startApplication: Input.asOptionalInput<bool>(map['startApplication']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
