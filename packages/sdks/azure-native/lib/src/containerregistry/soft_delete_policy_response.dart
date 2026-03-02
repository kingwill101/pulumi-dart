// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The soft delete policy for a container registry
class SoftDeletePolicyResponse {
  /// The timestamp when the policy was last updated.
  final pulumi.Input<String> lastUpdatedTime;
  /// The number of days after which a soft-deleted item is permanently deleted.
  final pulumi.Input<int>? retentionDays;
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<String>? status;

  /// Creates a new [SoftDeletePolicyResponse].
  /// [lastUpdatedTime] The timestamp when the policy was last updated.
  /// [retentionDays] The number of days after which a soft-deleted item is permanently deleted.
  /// [status] The value that indicates whether the policy is enabled or not.
  SoftDeletePolicyResponse({
    required this.lastUpdatedTime,
    this.retentionDays,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedTime': lastUpdatedTime,
      'retentionDays': ?retentionDays,
      'status': ?status,
    };
  }

  factory SoftDeletePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SoftDeletePolicyResponse(
      lastUpdatedTime: (map['lastUpdatedTime'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

