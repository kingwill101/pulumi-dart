// ignore_for_file: unused_element, unnecessary_cast


/// Defines parameters for http connection pooling
class HttpConnectionPool {
  /// Maximum number of pending http1 requests allowed
  final int? http1MaxPendingRequests;
  /// Maximum number of http2 requests allowed
  final int? http2MaxRequests;

  /// Creates a new [HttpConnectionPool].
  /// [http1MaxPendingRequests] Maximum number of pending http1 requests allowed
  /// [http2MaxRequests] Maximum number of http2 requests allowed
  HttpConnectionPool({
    this.http1MaxPendingRequests,
    this.http2MaxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http1MaxPendingRequests': ?http1MaxPendingRequests,
      'http2MaxRequests': ?http2MaxRequests,
    };
  }

  factory HttpConnectionPool.fromMap(Map<String, dynamic> map) {
    return HttpConnectionPool(
      http1MaxPendingRequests: map['http1MaxPendingRequests'] == null ? null : map['http1MaxPendingRequests'] as int,
      http2MaxRequests: map['http2MaxRequests'] == null ? null : map['http2MaxRequests'] as int,
    );
  }
}

