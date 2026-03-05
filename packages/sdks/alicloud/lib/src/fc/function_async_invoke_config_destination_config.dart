// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_async_invoke_config_destination_config_on_failure.dart';
import 'function_async_invoke_config_destination_config_on_success.dart';

class FunctionAsyncInvokeConfigDestinationConfig {
  /// Configuration block with destination configuration for failed asynchronous invocations. See `on_failure` below.
  final pulumi.Input<FunctionAsyncInvokeConfigDestinationConfigOnFailure>? onFailure;
  /// Configuration block with destination configuration for successful asynchronous invocations. See `on_success` below.
  final pulumi.Input<FunctionAsyncInvokeConfigDestinationConfigOnSuccess>? onSuccess;

  /// Creates a new [FunctionAsyncInvokeConfigDestinationConfig].
  /// [onFailure] Configuration block with destination configuration for failed asynchronous invocations. See `on_failure` below.
  /// [onSuccess] Configuration block with destination configuration for successful asynchronous invocations. See `on_success` below.
  FunctionAsyncInvokeConfigDestinationConfig({
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?pulumi.Input.mapOptionalInputValue<FunctionAsyncInvokeConfigDestinationConfigOnFailure, Map<String, dynamic>>(onFailure, (value) => value.toMap()),
      'onSuccess': ?pulumi.Input.mapOptionalInputValue<FunctionAsyncInvokeConfigDestinationConfigOnSuccess, Map<String, dynamic>>(onSuccess, (value) => value.toMap()),
    };
  }

  factory FunctionAsyncInvokeConfigDestinationConfig.fromMap(Map<String, dynamic> map) {
    return FunctionAsyncInvokeConfigDestinationConfig(
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionAsyncInvokeConfigDestinationConfigOnFailure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onSuccess: (() { final guardedValue = map['onSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionAsyncInvokeConfigDestinationConfigOnSuccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

