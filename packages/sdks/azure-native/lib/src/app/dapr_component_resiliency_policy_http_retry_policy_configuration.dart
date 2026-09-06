// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_resiliency_policy_http_retry_back_off_configuration.dart';

/// Dapr Component Resiliency Policy HTTP Retry Policy Configuration.
class DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration {
  /// The optional maximum number of retries
  final pulumi.Input<int?>? maxRetries;
  /// The optional retry backoff configuration
  final pulumi.Input<DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration?>? retryBackOff;

  /// Creates a new [DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration].
  /// [maxRetries] The optional maximum number of retries
  /// [retryBackOff] The optional retry backoff configuration
  const DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration({
    this.maxRetries,
    this.retryBackOff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetries': ?maxRetries,
      'retryBackOff': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration, Map<String, dynamic>>(retryBackOff, (value) => value.toMap()),
    };
  }

  factory DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyHttpRetryPolicyConfiguration(
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      retryBackOff: (() { final guardedValue = map['retryBackOff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
