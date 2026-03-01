// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleRepairRolloutRuleRepairPhaseRetry {
  /// Required. Total number of retries. Retry is skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  final String attempts;

  /// Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if wait is 0.
  /// Possible values are: `BACKOFF_MODE_UNSPECIFIED`, `BACKOFF_MODE_LINEAR`, `BACKOFF_MODE_EXPONENTIAL`.
  final String? backoffMode;

  /// Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d. A duration in seconds with up to nine fractional digits, ending with 's'. Example: `3.5s`.
  final String? wait;

  /// Creates a new [AutomationRuleRepairRolloutRuleRepairPhaseRetry].
  /// [attempts] Required. Total number of retries. Retry is skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  /// [backoffMode] Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if wait is 0.
  /// [wait] Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d. A duration in seconds with up to nine fractional digits, ending with 's'. Example: `3.5s`.
  AutomationRuleRepairRolloutRuleRepairPhaseRetry({
    required this.attempts,
    this.backoffMode,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': attempts,
      'backoffMode': ?backoffMode,
      'wait': ?wait,
    };
  }

  factory AutomationRuleRepairRolloutRuleRepairPhaseRetry.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleRepairRolloutRuleRepairPhaseRetry(
      attempts: map['attempts'] as String,
      backoffMode: map['backoffMode'] == null
          ? null
          : map['backoffMode'] as String,
      wait: map['wait'] == null ? null : map['wait'] as String,
    );
  }
}
