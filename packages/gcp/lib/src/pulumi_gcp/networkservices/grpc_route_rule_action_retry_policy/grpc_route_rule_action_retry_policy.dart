// ignore_for_file: unused_element, unnecessary_cast

class GrpcRouteRuleActionRetryPolicy {
  /// Specifies the allowed number of retries.
  final int? numRetries;

  /// Specifies one or more conditions when this retry policy applies.
  /// Each value may be one of: `connect-failure`, `refused-stream`, `cancelled`, `deadline-exceeded`, `resource-exhausted`, `unavailable`.
  final List<String>? retryConditions;

  GrpcRouteRuleActionRetryPolicy({
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

  factory GrpcRouteRuleActionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleActionRetryPolicy(
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      retryConditions: map['retryConditions'] == null
          ? null
          : (map['retryConditions'] as List).cast<String>(),
    );
  }
}
