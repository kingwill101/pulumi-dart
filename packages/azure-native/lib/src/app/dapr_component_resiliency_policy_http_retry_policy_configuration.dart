// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_component_resiliency_policy_http_retry_back_off_configuration.dart';

/// Dapr Component Resiliency Policy HTTP Retry Policy Configuration.
class DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration {
  /// The optional maximum number of retries
  final int? maxRetries;
  /// The optional retry backoff configuration
  final DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration? retryBackOff;

  /// Creates a new [DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration].
  /// [maxRetries] The optional maximum number of retries
  /// [retryBackOff] The optional retry backoff configuration
  DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration({
    this.maxRetries,
    this.retryBackOff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetries': ?maxRetries,
      'retryBackOff': ?retryBackOff == null ? null : retryBackOff!.toMap(),
    };
  }

  factory DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration(
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      retryBackOff: map['retryBackOff'] == null ? null : DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration.fromMap((map['retryBackOff'] as Map).cast<String, dynamic>()),
    );
  }
}

