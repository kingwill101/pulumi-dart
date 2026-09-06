// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The soft delete policy for a container registry
class SoftDeletePolicy {
  /// The number of days after which a soft-deleted item is permanently deleted.
  final pulumi.Input<int?>? retentionDays;
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [SoftDeletePolicy].
  /// [retentionDays] The number of days after which a soft-deleted item is permanently deleted.
  /// [status] The value that indicates whether the policy is enabled or not.
  SoftDeletePolicy({
    pulumi.Input<int?>? retentionDays,
    pulumi.Input<dynamic>? status,
  }) : retentionDays = retentionDays ?? pulumi.Input.fromValue(7), status = status ?? pulumi.Input.fromValue('disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDays': ?retentionDays,
      'status': ?status,
    };
  }

  factory SoftDeletePolicy.fromMap(Map<String, dynamic> map) {
    return SoftDeletePolicy(
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
