// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr Component Resiliency Policy HTTP Retry Backoff Configuration.
class DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration {
  /// The optional initial delay in milliseconds before an operation is retried
  final pulumi.Input<int>? initialDelayInMilliseconds;
  /// The optional maximum time interval in milliseconds between retry attempts
  final pulumi.Input<int>? maxIntervalInMilliseconds;

  /// Creates a new [DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration].
  /// [initialDelayInMilliseconds] The optional initial delay in milliseconds before an operation is retried
  /// [maxIntervalInMilliseconds] The optional maximum time interval in milliseconds between retry attempts
  DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration({
    this.initialDelayInMilliseconds,
    this.maxIntervalInMilliseconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelayInMilliseconds': ?initialDelayInMilliseconds,
      'maxIntervalInMilliseconds': ?maxIntervalInMilliseconds,
    };
  }

  factory DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration(
      initialDelayInMilliseconds: map['initialDelayInMilliseconds'] == null ? null : (map['initialDelayInMilliseconds'] as int).input(),
      maxIntervalInMilliseconds: map['maxIntervalInMilliseconds'] == null ? null : (map['maxIntervalInMilliseconds'] as int).input(),
    );
  }
}

