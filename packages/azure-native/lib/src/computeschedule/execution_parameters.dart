// ignore_for_file: unused_element, unnecessary_cast

import 'retry_policy.dart';

/// Extra details needed to run the user's request
class ExecutionParameters {
  /// Details that could optimize the user's request
  final String? optimizationPreference;
  /// Retry policy the user can pass
  final RetryPolicy? retryPolicy;

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
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
    };
  }

  factory ExecutionParameters.fromMap(Map<String, dynamic> map) {
    return ExecutionParameters(
      optimizationPreference: map['optimizationPreference'] == null ? null : map['optimizationPreference'] as String,
      retryPolicy: map['retryPolicy'] == null ? null : RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

