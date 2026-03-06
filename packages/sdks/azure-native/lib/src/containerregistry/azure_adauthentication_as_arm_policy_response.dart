// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy for using ARM audience token for a container registry.
class AzureADAuthenticationAsArmPolicyResponse {
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<String>? status;

  /// Creates a new [AzureADAuthenticationAsArmPolicyResponse].
  /// [status] The value that indicates whether the policy is enabled or not.
  const AzureADAuthenticationAsArmPolicyResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory AzureADAuthenticationAsArmPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AzureADAuthenticationAsArmPolicyResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

