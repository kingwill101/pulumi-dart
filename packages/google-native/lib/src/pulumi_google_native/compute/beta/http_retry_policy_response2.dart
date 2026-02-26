// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response2.dart';

/// The retry policy associates with HttpRouteRule
class HttpRetryPolicyResponse2 {
  /// Specifies the allowed number retries. This number must be > 0. If not specified, defaults to 1.
  final int numRetries;

  /// Specifies a non-zero timeout per retry attempt. If not specified, will use the timeout set in the HttpRouteAction field. If timeout in the HttpRouteAction field is not set, this field uses the largest timeout among all backend services associated with the route. Not supported when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final DurationResponse2 perTryTimeout;

  /// Specifies one or more conditions when this retry policy applies. Valid values are: - 5xx: retry is attempted if the instance or endpoint responds with any 5xx response code, or if the instance or endpoint does not respond at all. For example, disconnects, reset, read timeout, connection failure, and refused streams. - gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504. - connect-failure: a retry is attempted on failures connecting to the instance or endpoint. For example, connection timeouts. - retriable-4xx: a retry is attempted if the instance or endpoint responds with a 4xx response code. The only error that you can retry is error code 409. - refused-stream: a retry is attempted if the instance or endpoint resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: a retry is attempted if the gRPC status code in the response header is set to cancelled. - deadline-exceeded: a retry is attempted if the gRPC status code in the response header is set to deadline-exceeded. - internal: a retry is attempted if the gRPC status code in the response header is set to internal. - resource-exhausted: a retry is attempted if the gRPC status code in the response header is set to resource-exhausted. - unavailable: a retry is attempted if the gRPC status code in the response header is set to unavailable. Only the following codes are supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true. - cancelled - deadline-exceeded - internal - resource-exhausted - unavailable
  final List<String> retryConditions;

  HttpRetryPolicyResponse2({
    required this.numRetries,
    required this.perTryTimeout,
    required this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['numRetries'] = numRetries;
    map['perTryTimeout'] = perTryTimeout.toMap();
    map['retryConditions'] = retryConditions;
    return map;
  }

  factory HttpRetryPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return HttpRetryPolicyResponse2(
      numRetries: map['numRetries'] as int,
      perTryTimeout: DurationResponse2.fromMap(
          (map['perTryTimeout'] as Map).cast<String, dynamic>()),
      retryConditions: (map['retryConditions'] as List).cast<String>(),
    );
  }
}
