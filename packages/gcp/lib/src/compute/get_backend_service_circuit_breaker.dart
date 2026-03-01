// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_circuit_breaker_connect_timeout.dart';

class GetBackendServiceCircuitBreaker {
  /// The timeout for new network connections to hosts.
  final List<GetBackendServiceCircuitBreakerConnectTimeout> connectTimeouts;

  /// The maximum number of connections to the backend cluster.
  /// Defaults to 1024.
  final int maxConnections;

  /// The maximum number of pending requests to the backend cluster.
  /// Defaults to 1024.
  final int maxPendingRequests;

  /// The maximum number of parallel requests to the backend cluster.
  /// Defaults to 1024.
  final int maxRequests;

  /// Maximum requests for a single backend connection. This parameter
  /// is respected by both the HTTP/1.1 and HTTP/2 implementations. If
  /// not specified, there is no limit. Setting this parameter to 1
  /// will effectively disable keep alive.
  final int maxRequestsPerConnection;

  /// The maximum number of parallel retries to the backend cluster.
  /// Defaults to 3.
  final int maxRetries;

  /// Creates a new [GetBackendServiceCircuitBreaker].
  /// [connectTimeouts] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  GetBackendServiceCircuitBreaker({
    required this.connectTimeouts,
    required this.maxConnections,
    required this.maxPendingRequests,
    required this.maxRequests,
    required this.maxRequestsPerConnection,
    required this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeouts':
          pulumi.Input.encodeList<
            GetBackendServiceCircuitBreakerConnectTimeout,
            Map<String, dynamic>
          >(connectTimeouts, (value) => value.toMap()),
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
      'maxRequests': maxRequests,
      'maxRequestsPerConnection': maxRequestsPerConnection,
      'maxRetries': maxRetries,
    };
  }

  factory GetBackendServiceCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCircuitBreaker(
      connectTimeouts:
          pulumi
              .Input.decodeList<GetBackendServiceCircuitBreakerConnectTimeout>(
            map['connectTimeouts'],
            (value) => GetBackendServiceCircuitBreakerConnectTimeout.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] as int,
      maxRequests: map['maxRequests'] as int,
      maxRequestsPerConnection: map['maxRequestsPerConnection'] as int,
      maxRetries: map['maxRetries'] as int,
    );
  }
}
