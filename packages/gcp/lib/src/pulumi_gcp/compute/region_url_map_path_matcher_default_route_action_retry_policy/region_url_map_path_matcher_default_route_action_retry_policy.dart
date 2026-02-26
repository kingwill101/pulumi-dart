// ignore_for_file: unused_element, unnecessary_cast

import '../region_url_map_path_matcher_default_route_action_retry_policy_per_try_timeout/region_url_map_path_matcher_default_route_action_retry_policy_per_try_timeout.dart';

class RegionUrlMapPathMatcherDefaultRouteActionRetryPolicy {
  /// Specifies the allowed number retries. This number must be > 0. If not specified, defaults to 1.
  final int? numRetries;

  /// Specifies a non-zero timeout per retry attempt.
  /// If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set,
  /// will use the largest timeout among all backend services associated with the route.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout?
      perTryTimeout;

  /// Specifies one or more conditions when this retry policy applies.
  /// Valid values are listed below. Only the following codes are supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true: cancelled, deadline-exceeded, internal, resource-exhausted, unavailable.
  /// - 5xx : retry is attempted if the instance or endpoint responds with any 5xx response code, or if the instance or endpoint does not respond at all. For example, disconnects, reset, read timeout, connection failure, and refused streams.
  /// - gateway-error : Similar to 5xx, but only applies to response codes 502, 503 or 504.
  /// - connect-failure : a retry is attempted on failures connecting to the instance or endpoint. For example, connection timeouts.
  /// - retriable-4xx : a retry is attempted if the instance or endpoint responds with a 4xx response code. The only error that you can retry is error code 409.
  /// - refused-stream : a retry is attempted if the instance or endpoint resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
  /// - cancelled : a retry is attempted if the gRPC status code in the response header is set to cancelled.
  /// - deadline-exceeded : a retry is attempted if the gRPC status code in the response header is set to deadline-exceeded.
  /// - internal :  a retry is attempted if the gRPC status code in the response header is set to internal.
  /// - resource-exhausted : a retry is attempted if the gRPC status code in the response header is set to resource-exhausted.
  /// - unavailable : a retry is attempted if the gRPC status code in the response header is set to unavailable.
  final List<String>? retryConditions;

  RegionUrlMapPathMatcherDefaultRouteActionRetryPolicy({
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
      map['perTryTimeout'] = perTryTimeoutValue.toMap();
    }
    final retryConditionsValue = retryConditions;
    if (retryConditionsValue != null) {
      map['retryConditions'] = retryConditionsValue;
    }
    return map;
  }

  factory RegionUrlMapPathMatcherDefaultRouteActionRetryPolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherDefaultRouteActionRetryPolicy(
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      perTryTimeout: map['perTryTimeout'] == null
          ? null
          : RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout
              .fromMap((map['perTryTimeout'] as Map).cast<String, dynamic>()),
      retryConditions: map['retryConditions'] == null
          ? null
          : (map['retryConditions'] as List).cast<String>(),
    );
  }
}
