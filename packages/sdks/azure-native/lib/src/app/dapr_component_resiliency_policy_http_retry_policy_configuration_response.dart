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
  const DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationResponse({
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
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryBackOff: (() { final guardedValue = map['retryBackOff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
