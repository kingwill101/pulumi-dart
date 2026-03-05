// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_async_invoke_config_destination_config_on_failure.dart';
import 'v3_async_invoke_config_destination_config_on_success.dart';

class V3AsyncInvokeConfigDestinationConfig {
  /// Failed callback target structure See `on_failure` below.
  final pulumi.Input<V3AsyncInvokeConfigDestinationConfigOnFailure>? onFailure;
  /// Successful callback target structure See `on_success` below.
  final pulumi.Input<V3AsyncInvokeConfigDestinationConfigOnSuccess>? onSuccess;

  /// Creates a new [V3AsyncInvokeConfigDestinationConfig].
  /// [onFailure] Failed callback target structure See `on_failure` below.
  /// [onSuccess] Successful callback target structure See `on_success` below.
  V3AsyncInvokeConfigDestinationConfig({
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?pulumi.Input.mapOptionalInputValue<V3AsyncInvokeConfigDestinationConfigOnFailure, Map<String, dynamic>>(onFailure, (value) => value.toMap()),
      'onSuccess': ?pulumi.Input.mapOptionalInputValue<V3AsyncInvokeConfigDestinationConfigOnSuccess, Map<String, dynamic>>(onSuccess, (value) => value.toMap()),
    };
  }

  factory V3AsyncInvokeConfigDestinationConfig.fromMap(Map<String, dynamic> map) {
    return V3AsyncInvokeConfigDestinationConfig(
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V3AsyncInvokeConfigDestinationConfigOnFailure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onSuccess: (() { final guardedValue = map['onSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V3AsyncInvokeConfigDestinationConfigOnSuccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

