// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_resiliency_policy_http_retry_back_off_configuration_response.dart';

/// Dapr Component Resiliency Policy HTTP Retry Policy Configuration.
class DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse {
  /// The optional maximum number of retries
  final pulumi.Input<int>? maxRetries;
  /// The optional retry backoff configuration
  final pulumi.Input<DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse>? retryBackOff;

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
      'retryBackOff': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse, Map<String, dynamic>>(retryBackOff, (value) => value.toMap()),
    };
  }

  factory DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse(
      maxRetries: map['maxRetries'] == null ? null : (map['maxRetries'] as int).input(),
      retryBackOff: map['retryBackOff'] == null ? null : (DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse.fromMap((map['retryBackOff'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

