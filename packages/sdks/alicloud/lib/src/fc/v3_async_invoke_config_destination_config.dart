// ignore_for_file: unused_element, unnecessary_cast

import 'v3_async_invoke_config_destination_config_on_failure.dart';
import 'v3_async_invoke_config_destination_config_on_success.dart';

class V3AsyncInvokeConfigDestinationConfig {
  /// Failed callback target structure See `on_failure` below.
  final V3AsyncInvokeConfigDestinationConfigOnFailure? onFailure;
  /// Successful callback target structure See `on_success` below.
  final V3AsyncInvokeConfigDestinationConfigOnSuccess? onSuccess;

  /// Creates a new [V3AsyncInvokeConfigDestinationConfig].
  /// [onFailure] Failed callback target structure See `on_failure` below.
  /// [onSuccess] Successful callback target structure See `on_success` below.
  V3AsyncInvokeConfigDestinationConfig({
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?onFailure == null ? null : onFailure!.toMap(),
      'onSuccess': ?onSuccess == null ? null : onSuccess!.toMap(),
    };
  }

  factory V3AsyncInvokeConfigDestinationConfig.fromMap(Map<String, dynamic> map) {
    return V3AsyncInvokeConfigDestinationConfig(
      onFailure: map['onFailure'] == null ? null : V3AsyncInvokeConfigDestinationConfigOnFailure.fromMap((map['onFailure'] as Map).cast<String, dynamic>()),
      onSuccess: map['onSuccess'] == null ? null : V3AsyncInvokeConfigDestinationConfigOnSuccess.fromMap((map['onSuccess'] as Map).cast<String, dynamic>()),
    );
  }
}

