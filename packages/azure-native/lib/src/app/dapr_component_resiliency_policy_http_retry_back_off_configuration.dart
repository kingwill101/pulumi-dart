// ignore_for_file: unused_element, unnecessary_cast


/// Dapr Component Resiliency Policy HTTP Retry Backoff Configuration.
class DaprComponentResiliencyPolicyHttpRetryBackOffConfiguration {
  /// The optional initial delay in milliseconds before an operation is retried
  final int? initialDelayInMilliseconds;
  /// The optional maximum time interval in milliseconds between retry attempts
  final int? maxIntervalInMilliseconds;

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
      initialDelayInMilliseconds: map['initialDelayInMilliseconds'] == null ? null : map['initialDelayInMilliseconds'] as int,
      maxIntervalInMilliseconds: map['maxIntervalInMilliseconds'] == null ? null : map['maxIntervalInMilliseconds'] as int,
    );
  }
}

