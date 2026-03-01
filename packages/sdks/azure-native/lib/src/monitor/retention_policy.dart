// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the retention policy for the log.
class RetentionPolicy {
  /// the number of days for the retention in days. A value of 0 will retain the events indefinitely.
  final int days;
  /// a value indicating whether the retention policy is enabled.
  final bool enabled;

  /// Creates a new [RetentionPolicy].
  /// [days] the number of days for the retention in days. A value of 0 will retain the events indefinitely.
  /// [enabled] a value indicating whether the retention policy is enabled.
  RetentionPolicy({
    required this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'enabled': enabled,
    };
  }

  factory RetentionPolicy.fromMap(Map<String, dynamic> map) {
    return RetentionPolicy(
      days: map['days'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}

