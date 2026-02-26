// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// Settings controlling the volume of requests, connections and retries to this backend service.
class CircuitBreakers {
  /// The timeout for new network connections to hosts.
  final Duration? connectTimeout;

  /// The maximum number of connections to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int? maxConnections;

  /// The maximum number of pending requests allowed to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int? maxPendingRequests;

  /// The maximum number of parallel requests that allowed to the backend service. If not specified, there is no limit.
  final int? maxRequests;

  /// Maximum requests for a single connection to the backend service. This parameter is respected by both the HTTP/1.1 and HTTP/2 implementations. If not specified, there is no limit. Setting this parameter to 1 will effectively disable keep alive. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int? maxRequestsPerConnection;

  /// The maximum number of parallel retries allowed to the backend cluster. If not specified, the default is 1. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int? maxRetries;

  CircuitBreakers({
    this.connectTimeout,
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectTimeoutValue = connectTimeout;
    if (connectTimeoutValue != null) {
      map['connectTimeout'] = connectTimeoutValue.toMap();
    }
    final maxConnectionsValue = maxConnections;
    if (maxConnectionsValue != null) {
      map['maxConnections'] = maxConnectionsValue;
    }
    final maxPendingRequestsValue = maxPendingRequests;
    if (maxPendingRequestsValue != null) {
      map['maxPendingRequests'] = maxPendingRequestsValue;
    }
    final maxRequestsValue = maxRequests;
    if (maxRequestsValue != null) {
      map['maxRequests'] = maxRequestsValue;
    }
    final maxRequestsPerConnectionValue = maxRequestsPerConnection;
    if (maxRequestsPerConnectionValue != null) {
      map['maxRequestsPerConnection'] = maxRequestsPerConnectionValue;
    }
    final maxRetriesValue = maxRetries;
    if (maxRetriesValue != null) {
      map['maxRetries'] = maxRetriesValue;
    }
    return map;
  }

  factory CircuitBreakers.fromMap(Map<String, dynamic> map) {
    return CircuitBreakers(
      connectTimeout: map['connectTimeout'] == null
          ? null
          : Duration.fromMap(
              (map['connectTimeout'] as Map).cast<String, dynamic>()),
      maxConnections:
          map['maxConnections'] == null ? null : map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] == null
          ? null
          : map['maxPendingRequests'] as int,
      maxRequests:
          map['maxRequests'] == null ? null : map['maxRequests'] as int,
      maxRequestsPerConnection: map['maxRequestsPerConnection'] == null
          ? null
          : map['maxRequestsPerConnection'] as int,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
    );
  }
}
