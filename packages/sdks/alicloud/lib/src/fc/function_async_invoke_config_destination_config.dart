// ignore_for_file: unused_element, unnecessary_cast

import 'function_async_invoke_config_destination_config_on_failure.dart';
import 'function_async_invoke_config_destination_config_on_success.dart';

class FunctionAsyncInvokeConfigDestinationConfig {
  /// Configuration block with destination configuration for failed asynchronous invocations. See `on_failure` below.
  final FunctionAsyncInvokeConfigDestinationConfigOnFailure? onFailure;
  /// Configuration block with destination configuration for successful asynchronous invocations. See `on_success` below.
  final FunctionAsyncInvokeConfigDestinationConfigOnSuccess? onSuccess;

  /// Creates a new [FunctionAsyncInvokeConfigDestinationConfig].
  /// [onFailure] Configuration block with destination configuration for failed asynchronous invocations. See `on_failure` below.
  /// [onSuccess] Configuration block with destination configuration for successful asynchronous invocations. See `on_success` below.
  FunctionAsyncInvokeConfigDestinationConfig({
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?onFailure == null ? null : onFailure!.toMap(),
      'onSuccess': ?onSuccess == null ? null : onSuccess!.toMap(),
    };
  }

  factory FunctionAsyncInvokeConfigDestinationConfig.fromMap(Map<String, dynamic> map) {
    return FunctionAsyncInvokeConfigDestinationConfig(
      onFailure: map['onFailure'] == null ? null : FunctionAsyncInvokeConfigDestinationConfigOnFailure.fromMap((map['onFailure'] as Map).cast<String, dynamic>()),
      onSuccess: map['onSuccess'] == null ? null : FunctionAsyncInvokeConfigDestinationConfigOnSuccess.fromMap((map['onSuccess'] as Map).cast<String, dynamic>()),
    );
  }
}

