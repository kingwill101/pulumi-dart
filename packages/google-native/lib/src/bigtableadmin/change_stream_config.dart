// ignore_for_file: unused_element, unnecessary_cast

/// Change stream configuration.
class ChangeStreamConfig {
  /// How long the change stream should be retained. Change stream data older than the retention period will not be returned when reading the change stream from the table. Values must be at least 1 day and at most 7 days, and will be truncated to microsecond granularity.
  final String? retentionPeriod;

  /// Creates a new [ChangeStreamConfig].
  /// [retentionPeriod] How long the change stream should be retained. Change stream data older than the retention period will not be returned when reading the change stream from the table. Values must be at least 1 day and at most 7 days, and will be truncated to microsecond granularity.
  ChangeStreamConfig({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    return map;
  }

  factory ChangeStreamConfig.fromMap(Map<String, dynamic> map) {
    return ChangeStreamConfig(
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : map['retentionPeriod'] as String,
    );
  }
}
