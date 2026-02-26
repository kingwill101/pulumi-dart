// ignore_for_file: unused_element, unnecessary_cast

import '../function_event_invoke_config_destination_config_on_failure/function_event_invoke_config_destination_config_on_failure.dart';
import '../function_event_invoke_config_destination_config_on_success/function_event_invoke_config_destination_config_on_success.dart';

class FunctionEventInvokeConfigDestinationConfig {
  /// Configuration block with destination configuration for failed asynchronous invocations. See below.
  final FunctionEventInvokeConfigDestinationConfigOnFailure? onFailure;

  /// Configuration block with destination configuration for successful asynchronous invocations. See below.
  final FunctionEventInvokeConfigDestinationConfigOnSuccess? onSuccess;

  FunctionEventInvokeConfigDestinationConfig({
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onFailureValue = onFailure;
    if (onFailureValue != null) {
      map['onFailure'] = onFailureValue.toMap();
    }
    final onSuccessValue = onSuccess;
    if (onSuccessValue != null) {
      map['onSuccess'] = onSuccessValue.toMap();
    }
    return map;
  }

  factory FunctionEventInvokeConfigDestinationConfig.fromMap(
      Map<String, dynamic> map) {
    return FunctionEventInvokeConfigDestinationConfig(
      onFailure: map['onFailure'] == null
          ? null
          : FunctionEventInvokeConfigDestinationConfigOnFailure.fromMap(
              (map['onFailure'] as Map).cast<String, dynamic>()),
      onSuccess: map['onSuccess'] == null
          ? null
          : FunctionEventInvokeConfigDestinationConfigOnSuccess.fromMap(
              (map['onSuccess'] as Map).cast<String, dynamic>()),
    );
  }
}
