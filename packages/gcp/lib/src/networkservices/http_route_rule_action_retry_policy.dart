// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleActionRetryPolicy {
  /// Specifies the allowed number of retries.
  final int? numRetries;

  /// Specifies a non-zero timeout per retry attempt. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? perTryTimeout;

  /// Specifies one or more conditions when this retry policy applies.
  final List<String>? retryConditions;

  /// Creates a new [HttpRouteRuleActionRetryPolicy].
  /// [numRetries] Specifies the allowed number of retries.
  /// [perTryTimeout] Specifies a non-zero timeout per retry attempt. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [retryConditions] Specifies one or more conditions when this retry policy applies.
  HttpRouteRuleActionRetryPolicy({
    this.numRetries,
    this.perTryTimeout,
    this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numRetries': ?numRetries,
      'perTryTimeout': ?perTryTimeout,
      'retryConditions': ?retryConditions,
    };
  }

  factory HttpRouteRuleActionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionRetryPolicy(
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      perTryTimeout: map['perTryTimeout'] == null
          ? null
          : map['perTryTimeout'] as String,
      retryConditions: map['retryConditions'] == null
          ? null
          : (map['retryConditions'] as List).cast<String>(),
    );
  }
}
