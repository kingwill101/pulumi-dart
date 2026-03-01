// ignore_for_file: unused_element, unnecessary_cast

/// Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).
class EnterpriseCrmEventbusProtoFailurePolicyResponse {
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the initial interval for backoff.
  final String intervalInSeconds;

  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  final int maxNumRetries;

  /// Defines what happens to the task upon failure.
  final String retryStrategy;

  /// Creates a new [EnterpriseCrmEventbusProtoFailurePolicyResponse].
  /// [intervalInSeconds] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the initial interval for backoff.
  /// [maxNumRetries] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  /// [retryStrategy] Defines what happens to the task upon failure.
  EnterpriseCrmEventbusProtoFailurePolicyResponse({
    required this.intervalInSeconds,
    required this.maxNumRetries,
    required this.retryStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': intervalInSeconds,
      'maxNumRetries': maxNumRetries,
      'retryStrategy': retryStrategy,
    };
  }

  factory EnterpriseCrmEventbusProtoFailurePolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoFailurePolicyResponse(
      intervalInSeconds: map['intervalInSeconds'] as String,
      maxNumRetries: map['maxNumRetries'] as int,
      retryStrategy: map['retryStrategy'] as String,
    );
  }
}
