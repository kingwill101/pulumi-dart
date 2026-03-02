// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_async_invoke_config_destination_config.dart';

/// Input properties used for looking up and filtering V3AsyncInvokeConfig resources.
class V3AsyncInvokeConfigState {
  /// Whether to enable an asynchronous task
  final pulumi.Input<bool>? asyncTask;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Target Configuration See `destination_config` below.
  final pulumi.Input<V3AsyncInvokeConfigDestinationConfig>? destinationConfig;
  /// (Available since v1.234.0) Function resource identification
  final pulumi.Input<String>? functionArn;
  /// Function Name
  final pulumi.Input<String>? functionName;
  /// (Available since v1.234.0) Last modification time
  final pulumi.Input<String>? lastModifiedTime;
  /// Event maximum survival time
  final pulumi.Input<int>? maxAsyncEventAgeInSeconds;
  /// Number of Asynchronous call retries
  final pulumi.Input<int>? maxAsyncRetryAttempts;
  /// Function version or alias
  final pulumi.Input<String>? qualifier;

  /// Creates a new [V3AsyncInvokeConfigState].
  /// [asyncTask] Whether to enable an asynchronous task
  /// [createTime] The creation time of the resource
  /// [destinationConfig] Target Configuration See `destination_config` below.
  /// [functionArn] (Available since v1.234.0) Function resource identification
  /// [functionName] Function Name
  /// [lastModifiedTime] (Available since v1.234.0) Last modification time
  /// [maxAsyncEventAgeInSeconds] Event maximum survival time
  /// [maxAsyncRetryAttempts] Number of Asynchronous call retries
  /// [qualifier] Function version or alias
  V3AsyncInvokeConfigState({
    this.asyncTask,
    this.createTime,
    this.destinationConfig,
    this.functionArn,
    this.functionName,
    this.lastModifiedTime,
    this.maxAsyncEventAgeInSeconds,
    this.maxAsyncRetryAttempts,
    this.qualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncTask': ?asyncTask,
      'createTime': ?createTime,
      'destinationConfig': ?pulumi.Input.mapOptionalInputValue<V3AsyncInvokeConfigDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'functionArn': ?functionArn,
      'functionName': ?functionName,
      'lastModifiedTime': ?lastModifiedTime,
      'maxAsyncEventAgeInSeconds': ?maxAsyncEventAgeInSeconds,
      'maxAsyncRetryAttempts': ?maxAsyncRetryAttempts,
      'qualifier': ?qualifier,
    };
  }

  factory V3AsyncInvokeConfigState.fromMap(Map<String, dynamic> map) {
    return V3AsyncInvokeConfigState(
      asyncTask: map['asyncTask'] == null ? null : (map['asyncTask'] as bool).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      destinationConfig: map['destinationConfig'] == null ? null : (V3AsyncInvokeConfigDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())).input(),
      functionArn: map['functionArn'] == null ? null : (map['functionArn'] as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      maxAsyncEventAgeInSeconds: map['maxAsyncEventAgeInSeconds'] == null ? null : (map['maxAsyncEventAgeInSeconds'] as int).input(),
      maxAsyncRetryAttempts: map['maxAsyncRetryAttempts'] == null ? null : (map['maxAsyncRetryAttempts'] as int).input(),
      qualifier: map['qualifier'] == null ? null : (map['qualifier'] as String).input(),
    );
  }
}

