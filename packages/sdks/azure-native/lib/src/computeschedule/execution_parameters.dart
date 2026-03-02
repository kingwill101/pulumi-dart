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
  ExecutionParameters({
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
      optimizationPreference: map['optimizationPreference'] == null ? null : (map['optimizationPreference'] as String).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

