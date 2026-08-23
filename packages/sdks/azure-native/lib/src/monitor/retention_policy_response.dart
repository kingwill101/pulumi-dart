// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the retention policy for the log.
class RetentionPolicyResponse {
  /// the number of days for the retention in days. A value of 0 will retain the events indefinitely.
  final pulumi.Input<int> days;
  /// a value indicating whether the retention policy is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [RetentionPolicyResponse].
  /// [days] the number of days for the retention in days. A value of 0 will retain the events indefinitely.
  /// [enabled] a value indicating whether the retention policy is enabled.
  const RetentionPolicyResponse({
    required this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'enabled': enabled,
    };
  }

  factory RetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyResponse(
      days: pulumi.Input.fromValue(map['days'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
