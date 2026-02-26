// ignore_for_file: unused_element, unnecessary_cast

/// The specifications for retries.
class GrpcRouteRetryPolicy {
  /// Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.
  final int? numRetries;

  /// - connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable
  final List<String>? retryConditions;

  GrpcRouteRetryPolicy({
    this.numRetries,
    this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final numRetriesValue = numRetries;
    if (numRetriesValue != null) {
      map['numRetries'] = numRetriesValue;
    }
    final retryConditionsValue = retryConditions;
    if (retryConditionsValue != null) {
      map['retryConditions'] = retryConditionsValue;
    }
    return map;
  }

  factory GrpcRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRetryPolicy(
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      retryConditions: map['retryConditions'] == null
          ? null
          : (map['retryConditions'] as List).cast<String>(),
    );
  }
}
