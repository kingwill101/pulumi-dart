// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Settings controlling the volume of requests, connections and retries to this backend service.
class CircuitBreakersResponse {
  /// The timeout for new network connections to hosts.
  final DurationResponse connectTimeout;

  /// The maximum number of connections to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int maxConnections;

  /// The maximum number of pending requests allowed to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int maxPendingRequests;

  /// The maximum number of parallel requests that allowed to the backend service. If not specified, there is no limit.
  final int maxRequests;

  /// Maximum requests for a single connection to the backend service. This parameter is respected by both the HTTP/1.1 and HTTP/2 implementations. If not specified, there is no limit. Setting this parameter to 1 will effectively disable keep alive. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int maxRequestsPerConnection;

  /// The maximum number of parallel retries allowed to the backend cluster. If not specified, the default is 1. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final int maxRetries;

  /// Creates a new [CircuitBreakersResponse].
  /// [connectTimeout] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [maxPendingRequests] The maximum number of pending requests allowed to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [maxRequests] The maximum number of parallel requests that allowed to the backend service. If not specified, there is no limit.
  /// [maxRequestsPerConnection] Maximum requests for a single connection to the backend service. This parameter is respected by both the HTTP/1.1 and HTTP/2 implementations. If not specified, there is no limit. Setting this parameter to 1 will effectively disable keep alive. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [maxRetries] The maximum number of parallel retries allowed to the backend cluster. If not specified, the default is 1. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  CircuitBreakersResponse({
    required this.connectTimeout,
    required this.maxConnections,
    required this.maxPendingRequests,
    required this.maxRequests,
    required this.maxRequestsPerConnection,
    required this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectTimeout'] = connectTimeout.toMap();
    map['maxConnections'] = maxConnections;
    map['maxPendingRequests'] = maxPendingRequests;
    map['maxRequests'] = maxRequests;
    map['maxRequestsPerConnection'] = maxRequestsPerConnection;
    map['maxRetries'] = maxRetries;
    return map;
  }

  factory CircuitBreakersResponse.fromMap(Map<String, dynamic> map) {
    return CircuitBreakersResponse(
      connectTimeout: DurationResponse.fromMap(
          (map['connectTimeout'] as Map).cast<String, dynamic>()),
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] as int,
      maxRequests: map['maxRequests'] as int,
      maxRequestsPerConnection: map['maxRequestsPerConnection'] as int,
      maxRetries: map['maxRetries'] as int,
    );
  }
}
