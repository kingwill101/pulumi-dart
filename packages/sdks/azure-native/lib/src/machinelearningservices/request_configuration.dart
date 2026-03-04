// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scoring requests configuration.
class RequestConfiguration {
  /// The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  final pulumi.Input<int>? maxConcurrentRequestsPerInstance;

  /// The scoring timeout in ISO 8601 format.
  /// Defaults to 5000ms.
  final pulumi.Input<String>? requestTimeout;

  /// Creates a new [RequestConfiguration].
  /// [maxConcurrentRequestsPerInstance] The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  /// [requestTimeout] The scoring timeout in ISO 8601 format.
  RequestConfiguration({
    this.maxConcurrentRequestsPerInstance,
    this.requestTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRequestsPerInstance': ?maxConcurrentRequestsPerInstance,
      'requestTimeout': ?requestTimeout,
    };
  }

  factory RequestConfiguration.fromMap(Map<String, dynamic> map) {
    return RequestConfiguration(
      maxConcurrentRequestsPerInstance: (() {
        final guardedValue = map['maxConcurrentRequestsPerInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      requestTimeout: (() {
        final guardedValue = map['requestTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
