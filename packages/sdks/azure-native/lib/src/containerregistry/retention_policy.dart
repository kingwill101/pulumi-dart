// ignore_for_file: unused_element, unnecessary_cast


/// The retention policy for a container registry.
class RetentionPolicy {
  /// The number of days to retain an untagged manifest after which it gets purged.
  final int? days;
  /// The value that indicates whether the policy is enabled or not.
  final String? status;

  /// Creates a new [RetentionPolicy].
  /// [days] The number of days to retain an untagged manifest after which it gets purged.
  /// [status] The value that indicates whether the policy is enabled or not.
  RetentionPolicy({
    this.days,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'status': ?status,
    };
  }

  factory RetentionPolicy.fromMap(Map<String, dynamic> map) {
    return RetentionPolicy(
      days: map['days'] == null ? null : map['days'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

