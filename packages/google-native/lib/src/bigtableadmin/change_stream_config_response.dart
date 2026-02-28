// ignore_for_file: unused_element, unnecessary_cast

/// Change stream configuration.
class ChangeStreamConfigResponse {
  /// How long the change stream should be retained. Change stream data older than the retention period will not be returned when reading the change stream from the table. Values must be at least 1 day and at most 7 days, and will be truncated to microsecond granularity.
  final String retentionPeriod;

  /// Creates a new [ChangeStreamConfigResponse].
  /// [retentionPeriod] How long the change stream should be retained. Change stream data older than the retention period will not be returned when reading the change stream from the table. Values must be at least 1 day and at most 7 days, and will be truncated to microsecond granularity.
  ChangeStreamConfigResponse({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory ChangeStreamConfigResponse.fromMap(Map<String, dynamic> map) {
    return ChangeStreamConfigResponse(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
