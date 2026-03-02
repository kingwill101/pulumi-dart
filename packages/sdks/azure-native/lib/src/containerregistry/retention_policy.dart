// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The retention policy for a container registry.
class RetentionPolicy {
  /// The number of days to retain an untagged manifest after which it gets purged.
  final pulumi.Input<int>? days;
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<String>? status;

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
      days: map['days'] == null ? null : (map['days']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

