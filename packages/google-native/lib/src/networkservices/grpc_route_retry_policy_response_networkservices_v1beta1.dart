// ignore_for_file: unused_element, unnecessary_cast

/// The specifications for retries.
class GrpcRouteRetryPolicyResponseNetworkservicesV1beta1 {
  /// Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.
  final int numRetries;

  /// - connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable
  final List<String> retryConditions;

  /// Creates a new [GrpcRouteRetryPolicyResponseNetworkservicesV1beta1].
  /// [numRetries] Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.
  /// [retryConditions] - connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable
  GrpcRouteRetryPolicyResponseNetworkservicesV1beta1({
    required this.numRetries,
    required this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['numRetries'] = numRetries;
    map['retryConditions'] = retryConditions;
    return map;
  }

  factory GrpcRouteRetryPolicyResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteRetryPolicyResponseNetworkservicesV1beta1(
      numRetries: map['numRetries'] as int,
      retryConditions: (map['retryConditions'] as List).cast<String>(),
    );
  }
}
