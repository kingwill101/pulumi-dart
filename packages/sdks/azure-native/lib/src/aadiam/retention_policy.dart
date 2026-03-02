// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the retention policy for the log.
class RetentionPolicy {
  /// The number of days for the retention in days. A value of 0 will retain the events indefinitely.
  final pulumi.Input<int> days;
  /// A value indicating whether the retention policy is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [RetentionPolicy].
  /// [days] The number of days for the retention in days. A value of 0 will retain the events indefinitely.
  /// [enabled] A value indicating whether the retention policy is enabled.
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
      days: (map['days'] as int).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

