// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_async_invoke_config_destination_config.dart';

/// {@template pulumi_fc_v3_async_invoke_config_v3_async_invoke_config_args_doc}
/// The set of arguments for V3AsyncInvokeConfig.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_async_invoke_config_v3_async_invoke_config_args_doc}
class V3AsyncInvokeConfigArgs {
  /// Whether to enable an asynchronous task
  final pulumi.Input<bool>? asyncTask;
  /// Target Configuration See `destination_config` below.
  final pulumi.Input<V3AsyncInvokeConfigDestinationConfig>? destinationConfig;
  /// Function Name
  final pulumi.Input<String> functionName;
  /// Event maximum survival time
  final pulumi.Input<int>? maxAsyncEventAgeInSeconds;
  /// Number of Asynchronous call retries
  final pulumi.Input<int>? maxAsyncRetryAttempts;
  /// Function version or alias
  final pulumi.Input<String>? qualifier;

  /// Creates a new [V3AsyncInvokeConfigArgs].
  /// [asyncTask] Whether to enable an asynchronous task
  /// [destinationConfig] Target Configuration See `destination_config` below.
  /// [functionName] Function Name
  /// [maxAsyncEventAgeInSeconds] Event maximum survival time
  /// [maxAsyncRetryAttempts] Number of Asynchronous call retries
  /// [qualifier] Function version or alias
  V3AsyncInvokeConfigArgs({
    bool? asyncTask,
    V3AsyncInvokeConfigDestinationConfig? destinationConfig,
    required String functionName,
    int? maxAsyncEventAgeInSeconds,
    int? maxAsyncRetryAttempts,
    String? qualifier,
  }) :
      asyncTask = pulumi.Input.asOptionalInput<bool>(asyncTask),
      destinationConfig = pulumi.Input.asOptionalInput<V3AsyncInvokeConfigDestinationConfig>(destinationConfig),
      functionName = pulumi.Input.asInput<String>(functionName),
      maxAsyncEventAgeInSeconds = pulumi.Input.asOptionalInput<int>(maxAsyncEventAgeInSeconds),
      maxAsyncRetryAttempts = pulumi.Input.asOptionalInput<int>(maxAsyncRetryAttempts),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncTask': ?asyncTask,
      'destinationConfig': ?pulumi.Input.mapOptionalInputValue<V3AsyncInvokeConfigDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'functionName': functionName,
      'maxAsyncEventAgeInSeconds': ?maxAsyncEventAgeInSeconds,
      'maxAsyncRetryAttempts': ?maxAsyncRetryAttempts,
      'qualifier': ?qualifier,
    };
  }

  factory V3AsyncInvokeConfigArgs.fromMap(Map<String, dynamic> map) {
    return V3AsyncInvokeConfigArgs(
      asyncTask: map['asyncTask'] == null ? null : map['asyncTask'] as bool,
      destinationConfig: map['destinationConfig'] == null ? null : V3AsyncInvokeConfigDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>()),
      functionName: map['functionName'] as String,
      maxAsyncEventAgeInSeconds: map['maxAsyncEventAgeInSeconds'] == null ? null : map['maxAsyncEventAgeInSeconds'] as int,
      maxAsyncRetryAttempts: map['maxAsyncRetryAttempts'] == null ? null : map['maxAsyncRetryAttempts'] as int,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
    );
  }
}

