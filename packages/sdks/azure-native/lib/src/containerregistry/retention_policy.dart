// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The retention policy for a container registry.
class RetentionPolicy {
  /// The number of days to retain an untagged manifest after which it gets purged.
  final pulumi.Input<int?>? days;
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [RetentionPolicy].
  /// [days] The number of days to retain an untagged manifest after which it gets purged.
  /// [status] The value that indicates whether the policy is enabled or not.
  RetentionPolicy({
    pulumi.Input<int?>? days,
    pulumi.Input<dynamic>? status,
  }) : days = days ?? pulumi.Input.fromValue(7), status = status ?? pulumi.Input.fromValue('disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'status': ?status,
    };
  }

  factory RetentionPolicy.fromMap(Map<String, dynamic> map) {
    return RetentionPolicy(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
