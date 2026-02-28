// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_circuit_breakers_connect_timeout.dart';

class BackendServiceCircuitBreakers {
  /// The timeout for new network connections to hosts.
  /// Structure is documented below.
  final BackendServiceCircuitBreakersConnectTimeout? connectTimeout;

  /// The maximum number of connections to the backend cluster.
  /// Defaults to 1024.
  final int? maxConnections;

  /// The maximum number of pending requests to the backend cluster.
  /// Defaults to 1024.
  final int? maxPendingRequests;

  /// The maximum number of parallel requests to the backend cluster.
  /// Defaults to 1024.
  final int? maxRequests;

  /// Maximum requests for a single backend connection. This parameter
  /// is respected by both the HTTP/1.1 and HTTP/2 implementations. If
  /// not specified, there is no limit. Setting this parameter to 1
  /// will effectively disable keep alive.
  final int? maxRequestsPerConnection;

  /// The maximum number of parallel retries to the backend cluster.
  /// Defaults to 3.
  final int? maxRetries;

  /// Creates a new [BackendServiceCircuitBreakers].
  /// [connectTimeout] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  BackendServiceCircuitBreakers({
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

  factory BackendServiceCircuitBreakers.fromMap(Map<String, dynamic> map) {
    return BackendServiceCircuitBreakers(
      connectTimeout: map['connectTimeout'] == null
          ? null
          : BackendServiceCircuitBreakersConnectTimeout.fromMap(
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
