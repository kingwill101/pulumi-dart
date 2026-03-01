// ignore_for_file: unused_element, unnecessary_cast


class TriggerTumblingWindowRetry {
  /// The maximum retry attempts if the pipeline run failed.
  final int count;
  /// The Interval in seconds between each retry if the pipeline run failed. Defaults to `30`.
  final int? interval;

  /// Creates a new [TriggerTumblingWindowRetry].
  /// [count] The maximum retry attempts if the pipeline run failed.
  /// [interval] The Interval in seconds between each retry if the pipeline run failed. Defaults to `30`.
  TriggerTumblingWindowRetry({
    required this.count,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': ?interval,
    };
  }

  factory TriggerTumblingWindowRetry.fromMap(Map<String, dynamic> map) {
    return TriggerTumblingWindowRetry(
      count: map['count'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}

