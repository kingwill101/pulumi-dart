// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr Component Resiliency Policy HTTP Retry Backoff Configuration.
class DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse {
  /// The optional initial delay in milliseconds before an operation is retried
  final pulumi.Input<int>? initialDelayInMilliseconds;

  /// The optional maximum time interval in milliseconds between retry attempts
  final pulumi.Input<int>? maxIntervalInMilliseconds;

  /// Creates a new [DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse].
  /// [initialDelayInMilliseconds] The optional initial delay in milliseconds before an operation is retried
  /// [maxIntervalInMilliseconds] The optional maximum time interval in milliseconds between retry attempts
  DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse({
    this.initialDelayInMilliseconds,
    this.maxIntervalInMilliseconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelayInMilliseconds': ?initialDelayInMilliseconds,
      'maxIntervalInMilliseconds': ?maxIntervalInMilliseconds,
    };
  }

  factory DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationResponse(
      initialDelayInMilliseconds: (() {
        final guardedValue = map['initialDelayInMilliseconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxIntervalInMilliseconds: (() {
        final guardedValue = map['maxIntervalInMilliseconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
