// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scoring requests configuration.
class RequestConfigurationResponse {
  /// The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  final pulumi.Input<int>? maxConcurrentRequestsPerInstance;
  /// The scoring timeout in ISO 8601 format.
  /// Defaults to 5000ms.
  final pulumi.Input<String>? requestTimeout;

  /// Creates a new [RequestConfigurationResponse].
  /// [maxConcurrentRequestsPerInstance] The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  /// [requestTimeout] The scoring timeout in ISO 8601 format.
  RequestConfigurationResponse({
    this.maxConcurrentRequestsPerInstance,
    this.requestTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRequestsPerInstance': ?maxConcurrentRequestsPerInstance,
      'requestTimeout': ?requestTimeout,
    };
  }

  factory RequestConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RequestConfigurationResponse(
      maxConcurrentRequestsPerInstance: map['maxConcurrentRequestsPerInstance'] == null ? null : (map['maxConcurrentRequestsPerInstance']! as int).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout']! as String).input(),
    );
  }
}

