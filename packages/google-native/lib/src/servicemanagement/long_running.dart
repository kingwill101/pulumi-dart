// ignore_for_file: unused_element, unnecessary_cast

/// Describes settings to use when generating API methods that use the long-running operation pattern. All default values below are from those used in the client library generators (e.g. [Java](https://github.com/googleapis/gapic-generator-java/blob/04c2faa191a9b5a10b92392fe8482279c4404803/src/main/java/com/google/api/generator/gapic/composer/common/RetrySettingsComposer.java)).
class LongRunning {
  /// Initial delay after which the first poll request will be made. Default value: 5 seconds.
  final String? initialPollDelay;

  /// Maximum time between two subsequent poll requests. Default value: 45 seconds.
  final String? maxPollDelay;

  /// Multiplier to gradually increase delay between subsequent polls until it reaches max_poll_delay. Default value: 1.5.
  final double? pollDelayMultiplier;

  /// Total polling timeout. Default value: 5 minutes.
  final String? totalPollTimeout;

  /// Creates a new [LongRunning].
  /// [initialPollDelay] Initial delay after which the first poll request will be made. Default value: 5 seconds.
  /// [maxPollDelay] Maximum time between two subsequent poll requests. Default value: 45 seconds.
  /// [pollDelayMultiplier] Multiplier to gradually increase delay between subsequent polls until it reaches max_poll_delay. Default value: 1.5.
  /// [totalPollTimeout] Total polling timeout. Default value: 5 minutes.
  LongRunning({
    this.initialPollDelay,
    this.maxPollDelay,
    this.pollDelayMultiplier,
    this.totalPollTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final initialPollDelayValue = initialPollDelay;
    if (initialPollDelayValue != null) {
      map['initialPollDelay'] = initialPollDelayValue;
    }
    final maxPollDelayValue = maxPollDelay;
    if (maxPollDelayValue != null) {
      map['maxPollDelay'] = maxPollDelayValue;
    }
    final pollDelayMultiplierValue = pollDelayMultiplier;
    if (pollDelayMultiplierValue != null) {
      map['pollDelayMultiplier'] = pollDelayMultiplierValue;
    }
    final totalPollTimeoutValue = totalPollTimeout;
    if (totalPollTimeoutValue != null) {
      map['totalPollTimeout'] = totalPollTimeoutValue;
    }
    return map;
  }

  factory LongRunning.fromMap(Map<String, dynamic> map) {
    return LongRunning(
      initialPollDelay: map['initialPollDelay'] == null
          ? null
          : map['initialPollDelay'] as String,
      maxPollDelay:
          map['maxPollDelay'] == null ? null : map['maxPollDelay'] as String,
      pollDelayMultiplier: map['pollDelayMultiplier'] == null
          ? null
          : map['pollDelayMultiplier'] as double,
      totalPollTimeout: map['totalPollTimeout'] == null
          ? null
          : map['totalPollTimeout'] as String,
    );
  }
}
