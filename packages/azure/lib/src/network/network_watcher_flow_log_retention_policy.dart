// ignore_for_file: unused_element, unnecessary_cast


class NetworkWatcherFlowLogRetentionPolicy {
  /// The number of days to retain flow log records.
  final int days;
  /// Boolean flag to enable/disable retention.
  final bool enabled;

  /// Creates a new [NetworkWatcherFlowLogRetentionPolicy].
  /// [days] The number of days to retain flow log records.
  /// [enabled] Boolean flag to enable/disable retention.
  NetworkWatcherFlowLogRetentionPolicy({
    required this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'enabled': enabled,
    };
  }

  factory NetworkWatcherFlowLogRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return NetworkWatcherFlowLogRetentionPolicy(
      days: map['days'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}

