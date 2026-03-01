// ignore_for_file: unused_element, unnecessary_cast


/// The retention policy for a container registry.
class RetentionPolicyResponse {
  /// The number of days to retain an untagged manifest after which it gets purged.
  final int? days;
  /// The timestamp when the policy was last updated.
  final String lastUpdatedTime;
  /// The value that indicates whether the policy is enabled or not.
  final String? status;

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
      days: map['days'] == null ? null : map['days'] as int,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

