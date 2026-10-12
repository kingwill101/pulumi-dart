// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration.dart';
import 'application_cloudwatch_logging_options.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Application configuration. See `applicationConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfiguration?>? applicationConfiguration;
  /// Application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  final pulumi.Input<String?>? applicationMode;
  /// ARN of the application.
  final pulumi.Input<String?>? arn;
  /// CloudWatch log stream to monitor application configuration errors. See `cloudwatchLoggingOptions` Block below.
  final pulumi.Input<ApplicationCloudwatchLoggingOptions?>? cloudwatchLoggingOptions;
  /// Current timestamp when the application was created.
  final pulumi.Input<String?>? createTimestamp;
  /// Summary description of the application.
  final pulumi.Input<String?>? description;
  /// Whether to force stop an unresponsive Flink-based application.
  final pulumi.Input<bool?>? forceStop;
  /// Current timestamp when the application was last updated.
  final pulumi.Input<String?>? lastUpdateTimestamp;
  /// Name of the application.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`, `FLINK-2_2`, `FLINK-2_3`.
  final pulumi.Input<String?>? runtimeEnvironment;
  /// ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? serviceExecutionRole;
  /// Whether to start or stop the application.
  final pulumi.Input<bool?>? startApplication;
  /// Status of the application.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Current application version. Kinesis Data Analytics updates the `versionId` each time the application is updated.
  final pulumi.Input<int?>? versionId;

  /// Creates a new [ApplicationState].
  /// [applicationConfiguration] Application configuration. See `applicationConfiguration` Block below.
  /// [applicationMode] Application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  /// [arn] ARN of the application.
  /// [cloudwatchLoggingOptions] CloudWatch log stream to monitor application configuration errors. See `cloudwatchLoggingOptions` Block below.
  /// [createTimestamp] Current timestamp when the application was created.
  /// [description] Summary description of the application.
  /// [forceStop] Whether to force stop an unresponsive Flink-based application.
  /// [lastUpdateTimestamp] Current timestamp when the application was last updated.
  /// [name] Name of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeEnvironment] Runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`, `FLINK-2_2`, `FLINK-2_3`.
  /// [serviceExecutionRole] ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  /// [startApplication] Whether to start or stop the application.
  /// [status] Status of the application.
  /// [tags] Map of tags to assign to the application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [versionId] Current application version. Kinesis Data Analytics updates the `versionId` each time the application is updated.
  const ApplicationState({
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
      applicationConfiguration: (() { final guardedValue = map['applicationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationMode: (() { final guardedValue = map['applicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTimestamp: (() { final guardedValue = map['createTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceStop: (() { final guardedValue = map['forceStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastUpdateTimestamp: (() { final guardedValue = map['lastUpdateTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeEnvironment: (() { final guardedValue = map['runtimeEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceExecutionRole: (() { final guardedValue = map['serviceExecutionRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startApplication: (() { final guardedValue = map['startApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
