// ignore_for_file: unused_element, unnecessary_cast

import 'dapr_component_resiliency_policy_http_retry_back_off_configuration_response.dart';

/// Dapr Component Resiliency Policy HTTP Retry Policy Configuration.
class DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse {
  /// The optional maximum number of retries
  final int? maxRetries;
  /// The optional retry backoff configuration
  final DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse? retryBackOff;

  /// Creates a new [DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse].
  /// [maxRetries] The optional maximum number of retries
  /// [retryBackOff] The optional retry backoff configuration
  DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse({
    this.maxRetries,
    this.retryBackOff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetries': ?maxRetries,
      'retryBackOff': ?retryBackOff == null ? null : retryBackOff!.toMap(),
    };
  }

  factory DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse(
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      retryBackOff: map['retryBackOff'] == null ? null : DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse.fromMap((map['retryBackOff'] as Map).cast<String, dynamic>()),
    );
  }
}

