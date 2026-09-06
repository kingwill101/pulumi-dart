// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content trust policy for a container registry.
class TrustPolicy {
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<dynamic>? status;
  /// The type of trust policy.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [TrustPolicy].
  /// [status] The value that indicates whether the policy is enabled or not.
  /// [type] The type of trust policy.
  TrustPolicy({
    pulumi.Input<dynamic>? status,
    pulumi.Input<dynamic>? type,
  }) : status = status ?? pulumi.Input.fromValue('disabled'), type = type ?? pulumi.Input.fromValue('Notary');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'type': ?type,
    };
  }

  factory TrustPolicy.fromMap(Map<String, dynamic> map) {
    return TrustPolicy(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
