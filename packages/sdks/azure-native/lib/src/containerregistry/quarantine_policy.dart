// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The quarantine policy for a container registry.
class QuarantinePolicy {
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [QuarantinePolicy].
  /// [status] The value that indicates whether the policy is enabled or not.
  QuarantinePolicy({
    pulumi.Input<dynamic>? status,
  }) : status = status ?? pulumi.Input.fromValue('disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory QuarantinePolicy.fromMap(Map<String, dynamic> map) {
    return QuarantinePolicy(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
