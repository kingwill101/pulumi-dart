// ignore_for_file: unused_element, unnecessary_cast

import 'region_backend_service_circuit_breakers_connect_timeout.dart';

class RegionBackendServiceCircuitBreakers {
  /// The timeout for new network connections to hosts.
  /// Structure is documented below.
  final RegionBackendServiceCircuitBreakersConnectTimeout? connectTimeout;
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

  /// Creates a new [RegionBackendServiceCircuitBreakers].
  /// [connectTimeout] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  RegionBackendServiceCircuitBreakers({
    this.connectTimeout,
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': ?connectTimeout == null ? null : connectTimeout!.toMap(),
      'maxConnections': ?maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
      'maxRequests': ?maxRequests,
      'maxRequestsPerConnection': ?maxRequestsPerConnection,
      'maxRetries': ?maxRetries,
    };
  }

  factory RegionBackendServiceCircuitBreakers.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceCircuitBreakers(
      connectTimeout: map['connectTimeout'] == null ? null : RegionBackendServiceCircuitBreakersConnectTimeout.fromMap((map['connectTimeout'] as Map).cast<String, dynamic>()),
      maxConnections: map['maxConnections'] == null ? null : map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] == null ? null : map['maxPendingRequests'] as int,
      maxRequests: map['maxRequests'] == null ? null : map['maxRequests'] as int,
      maxRequestsPerConnection: map['maxRequestsPerConnection'] == null ? null : map['maxRequestsPerConnection'] as int,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
    );
  }
}

