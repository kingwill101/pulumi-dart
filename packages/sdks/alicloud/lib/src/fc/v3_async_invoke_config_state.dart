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
    pulumi.Output<bool>? asyncTask,
    pulumi.Output<String>? createTime,
    pulumi.Output<V3AsyncInvokeConfigDestinationConfig>? destinationConfig,
    pulumi.Output<String>? functionArn,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<int>? maxAsyncEventAgeInSeconds,
    pulumi.Output<int>? maxAsyncRetryAttempts,
    pulumi.Output<String>? qualifier,
  }) :
      asyncTask = pulumi.Input.asOptionalInput<bool>(asyncTask),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      destinationConfig = pulumi.Input.asOptionalInput<V3AsyncInvokeConfigDestinationConfig>(destinationConfig),
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      maxAsyncEventAgeInSeconds = pulumi.Input.asOptionalInput<int>(maxAsyncEventAgeInSeconds),
      maxAsyncRetryAttempts = pulumi.Input.asOptionalInput<int>(maxAsyncRetryAttempts),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier);

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
      asyncTask: map['asyncTask'] == null ? null : pulumi.Output.create<bool>(map['asyncTask'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      destinationConfig: map['destinationConfig'] == null ? null : pulumi.Output.create<V3AsyncInvokeConfigDestinationConfig>(V3AsyncInvokeConfigDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())),
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      maxAsyncEventAgeInSeconds: map['maxAsyncEventAgeInSeconds'] == null ? null : pulumi.Output.create<int>(map['maxAsyncEventAgeInSeconds'] as int),
      maxAsyncRetryAttempts: map['maxAsyncRetryAttempts'] == null ? null : pulumi.Output.create<int>(map['maxAsyncRetryAttempts'] as int),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
    );
  }
}

