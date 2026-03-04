// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_async_invoke_config_destination_config.dart';

/// Input properties used for looking up and filtering FunctionAsyncInvokeConfig resources.
class FunctionAsyncInvokeConfigState {
  /// The date this resource was created.
  final pulumi.Input<String>? createdTime;

  /// Configuration block with destination configuration. See `destination_config` below.
  final pulumi.Input<FunctionAsyncInvokeConfigDestinationConfig>?
  destinationConfig;

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
    this.createdTime,
    this.destinationConfig,
    this.functionName,
    this.lastModifiedTime,
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
    this.qualifier,
    this.serviceName,
    this.statefulInvocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': ?createdTime,
      'destinationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionAsyncInvokeConfigDestinationConfig,
            Map<String, dynamic>
          >(destinationConfig, (value) => value.toMap()),
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
      createdTime: (() {
        final guardedValue = map['createdTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationConfig: (() {
        final guardedValue = map['destinationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionAsyncInvokeConfigDestinationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      functionName: (() {
        final guardedValue = map['functionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedTime: (() {
        final guardedValue = map['lastModifiedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maximumEventAgeInSeconds: (() {
        final guardedValue = map['maximumEventAgeInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maximumRetryAttempts: (() {
        final guardedValue = map['maximumRetryAttempts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      qualifier: (() {
        final guardedValue = map['qualifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statefulInvocation: (() {
        final guardedValue = map['statefulInvocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
