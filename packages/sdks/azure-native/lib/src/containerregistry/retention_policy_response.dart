// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The retention policy for a container registry.
class RetentionPolicyResponse {
  /// The number of days to retain an untagged manifest after which it gets purged.
  final pulumi.Input<int>? days;
  /// The timestamp when the policy was last updated.
  final pulumi.Input<String> lastUpdatedTime;
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<String>? status;

  /// Creates a new [RetentionPolicyResponse].
  /// [days] The number of days to retain an untagged manifest after which it gets purged.
  /// [lastUpdatedTime] The timestamp when the policy was last updated.
  /// [status] The value that indicates whether the policy is enabled or not.
  RetentionPolicyResponse({
    this.days,
    required this.lastUpdatedTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'lastUpdatedTime': lastUpdatedTime,
      'status': ?status,
    };
  }

  factory RetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyResponse(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lastUpdatedTime: pulumi.Input.fromValue(map['lastUpdatedTime'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

