// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_policy_response.dart';

/// Extra details needed to run the user's request
class ExecutionParametersResponse {
  /// Details that could optimize the user's request
  final pulumi.Input<String>? optimizationPreference;
  /// Retry policy the user can pass
  final pulumi.Input<RetryPolicyResponse>? retryPolicy;

  /// Creates a new [ExecutionParametersResponse].
  /// [optimizationPreference] Details that could optimize the user's request
  /// [retryPolicy] Retry policy the user can pass
  ExecutionParametersResponse({
    this.optimizationPreference,
    this.retryPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizationPreference': ?optimizationPreference,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicyResponse, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
    };
  }

  factory ExecutionParametersResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionParametersResponse(
      optimizationPreference: map['optimizationPreference'] == null ? null : (map['optimizationPreference']! as String).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RetryPolicyResponse.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

