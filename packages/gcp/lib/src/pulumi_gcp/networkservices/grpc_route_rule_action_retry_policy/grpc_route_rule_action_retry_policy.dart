// ignore_for_file: unused_element, unnecessary_cast

class GrpcRouteRuleActionRetryPolicy {
  /// Specifies the allowed number of retries.
  final int? numRetries;

  /// Specifies one or more conditions when this retry policy applies.
  /// Each value may be one of: `connect-failure`, `refused-stream`, <span pulumi-lang-nodejs="`cancelled`" pulumi-lang-dotnet="`Cancelled`" pulumi-lang-go="`cancelled`" pulumi-lang-python="`cancelled`" pulumi-lang-yaml="`cancelled`" pulumi-lang-java="`cancelled`">`cancelled`</span>, `deadline-exceeded`, `resource-exhausted`, <span pulumi-lang-nodejs="`unavailable`" pulumi-lang-dotnet="`Unavailable`" pulumi-lang-go="`unavailable`" pulumi-lang-python="`unavailable`" pulumi-lang-yaml="`unavailable`" pulumi-lang-java="`unavailable`">`unavailable`</span>.
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
