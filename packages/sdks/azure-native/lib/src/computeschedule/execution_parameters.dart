// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_policy.dart';

/// Extra details needed to run the user's request
class ExecutionParameters {
  /// Details that could optimize the user's request
  final pulumi.Input<String>? optimizationPreference;
  /// Retry policy the user can pass
  final pulumi.Input<RetryPolicy>? retryPolicy;

  /// Creates a new [ExecutionParameters].
  /// [optimizationPreference] Details that could optimize the user's request
  /// [retryPolicy] Retry policy the user can pass
  const ExecutionParameters({
    this.optimizationPreference,
    this.retryPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizationPreference': ?optimizationPreference,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
    };
  }

  factory ExecutionParameters.fromMap(Map<String, dynamic> map) {
    return ExecutionParameters(
      optimizationPreference: (() { final guardedValue = map['optimizationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

