// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content trust policy for a container registry.
class TrustPolicyResponse {
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<String>? status;
  /// The type of trust policy.
  final pulumi.Input<String>? type;

  /// Creates a new [TrustPolicyResponse].
  /// [status] The value that indicates whether the policy is enabled or not.
  /// [type] The type of trust policy.
  const TrustPolicyResponse({
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'type': ?type,
    };
  }

  factory TrustPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TrustPolicyResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
