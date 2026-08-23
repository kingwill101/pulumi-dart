// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the retention policy for the log.
class MicrosoftCommonRetentionPolicy {
  /// the number of days for the retention in days. A value of 0 will retain the events indefinitely.
  final pulumi.Input<int> days;
  /// a value indicating whether the retention policy is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [MicrosoftCommonRetentionPolicy].
  /// [days] the number of days for the retention in days. A value of 0 will retain the events indefinitely.
  /// [enabled] a value indicating whether the retention policy is enabled.
  const MicrosoftCommonRetentionPolicy({
    required this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'enabled': enabled,
    };
  }

  factory MicrosoftCommonRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return MicrosoftCommonRetentionPolicy(
      days: pulumi.Input.fromValue(map['days'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
