// ignore_for_file: unused_element, unnecessary_cast

/// The specifications for retries.
class HttpRouteRetryPolicy2 {
  /// Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.
  final int? numRetries;

  /// Specifies a non-zero timeout per retry attempt.
  final String? perTryTimeout;

  /// Specifies one or more conditions when this retry policy applies. Valid values are: 5xx: Proxy will attempt a retry if the destination service responds with any 5xx response code, of if the destination service does not respond at all, example: disconnect, reset, read timeout, connection failure and refused streams. gateway-error: Similar to 5xx, but only applies to response codes 502, 503, 504. reset: Proxy will attempt a retry if the destination service does not respond at all (disconnect/reset/read timeout) connect-failure: Proxy will retry on failures connecting to destination for example due to connection timeouts. retriable-4xx: Proxy will retry fro retriable 4xx response codes. Currently the only retriable error supported is 409. refused-stream: Proxy will retry if the destination resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
  final List<String>? retryConditions;

  HttpRouteRetryPolicy2({
    this.numRetries,
    this.perTryTimeout,
    this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final numRetriesValue = numRetries;
    if (numRetriesValue != null) {
      map['numRetries'] = numRetriesValue;
    }
    final perTryTimeoutValue = perTryTimeout;
    if (perTryTimeoutValue != null) {
      map['perTryTimeout'] = perTryTimeoutValue;
    }
    final retryConditionsValue = retryConditions;
    if (retryConditionsValue != null) {
      map['retryConditions'] = retryConditionsValue;
    }
    return map;
  }

  factory HttpRouteRetryPolicy2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRetryPolicy2(
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      perTryTimeout:
          map['perTryTimeout'] == null ? null : map['perTryTimeout'] as String,
      retryConditions: map['retryConditions'] == null
          ? null
          : (map['retryConditions'] as List).cast<String>(),
    );
  }
}
