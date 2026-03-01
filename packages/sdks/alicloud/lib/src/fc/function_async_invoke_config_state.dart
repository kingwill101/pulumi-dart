// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_async_invoke_config_destination_config.dart';

/// Input properties used for looking up and filtering FunctionAsyncInvokeConfig resources.
class FunctionAsyncInvokeConfigState {
  /// The date this resource was created.
  final pulumi.Input<String>? createdTime;
  /// Configuration block with destination configuration. See `destination_config` below.
  final pulumi.Input<FunctionAsyncInvokeConfigDestinationConfig>? destinationConfig;
  /// Name of the Function Compute Function.
  final pulumi.Input<String>? functionName;
  /// The date this resource was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// Maximum age of a request that Function Compute sends to a function for processing in seconds. Valid values between 1 and 2592000 (between 60 and 21600 before v1.167.0).
  final pulumi.Input<int>? maximumEventAgeInSeconds;
  /// Maximum number of times to retry when the function returns an error. Valid values between 0 and 8 (between 0 and 2 before v1.167.0). Defaults to 2.
  final pulumi.Input<int>? maximumRetryAttempts;
  /// Function Compute Function published version, `LATEST`, or Function Compute Alias name. The default value is `LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Name of the Function Compute Function, omitting any version or alias qualifier.
  final pulumi.Input<String>? serviceName;
  /// Function Compute async job configuration(also known as Task Mode). valid values true or false, default `false`
  final pulumi.Input<bool>? statefulInvocation;

  /// Creates a new [FunctionAsyncInvokeConfigState].
  /// [createdTime] The date this resource was created.
  /// [destinationConfig] Configuration block with destination configuration. See `destination_config` below.
  /// [functionName] Name of the Function Compute Function.
  /// [lastModifiedTime] The date this resource was last modified.
  /// [maximumEventAgeInSeconds] Maximum age of a request that Function Compute sends to a function for processing in seconds. Valid values between 1 and 2592000 (between 60 and 21600 before v1.167.0).
  /// [maximumRetryAttempts] Maximum number of times to retry when the function returns an error. Valid values between 0 and 8 (between 0 and 2 before v1.167.0). Defaults to 2.
  /// [qualifier] Function Compute Function published version, `LATEST`, or Function Compute Alias name. The default value is `LATEST`.
  /// [serviceName] Name of the Function Compute Function, omitting any version or alias qualifier.
  /// [statefulInvocation] Function Compute async job configuration(also known as Task Mode). valid values true or false, default `false`
  FunctionAsyncInvokeConfigState({
    pulumi.Output<String>? createdTime,
    pulumi.Output<FunctionAsyncInvokeConfigDestinationConfig>? destinationConfig,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<int>? maximumEventAgeInSeconds,
    pulumi.Output<int>? maximumRetryAttempts,
    pulumi.Output<String>? qualifier,
    pulumi.Output<String>? serviceName,
    pulumi.Output<bool>? statefulInvocation,
  }) :
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      destinationConfig = pulumi.Input.asOptionalInput<FunctionAsyncInvokeConfigDestinationConfig>(destinationConfig),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      maximumEventAgeInSeconds = pulumi.Input.asOptionalInput<int>(maximumEventAgeInSeconds),
      maximumRetryAttempts = pulumi.Input.asOptionalInput<int>(maximumRetryAttempts),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      statefulInvocation = pulumi.Input.asOptionalInput<bool>(statefulInvocation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': ?createdTime,
      'destinationConfig': ?pulumi.Input.mapOptionalInputValue<FunctionAsyncInvokeConfigDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'functionName': ?functionName,
      'lastModifiedTime': ?lastModifiedTime,
      'maximumEventAgeInSeconds': ?maximumEventAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
      'qualifier': ?qualifier,
      'serviceName': ?serviceName,
      'statefulInvocation': ?statefulInvocation,
    };
  }

  factory FunctionAsyncInvokeConfigState.fromMap(Map<String, dynamic> map) {
    return FunctionAsyncInvokeConfigState(
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      destinationConfig: map['destinationConfig'] == null ? null : pulumi.Output.create<FunctionAsyncInvokeConfigDestinationConfig>(FunctionAsyncInvokeConfigDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      maximumEventAgeInSeconds: map['maximumEventAgeInSeconds'] == null ? null : pulumi.Output.create<int>(map['maximumEventAgeInSeconds'] as int),
      maximumRetryAttempts: map['maximumRetryAttempts'] == null ? null : pulumi.Output.create<int>(map['maximumRetryAttempts'] as int),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      statefulInvocation: map['statefulInvocation'] == null ? null : pulumi.Output.create<bool>(map['statefulInvocation'] as bool),
    );
  }
}

