// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy for using ARM audience token for a container registry.
class AzureADAuthenticationAsArmPolicy {
  /// The value that indicates whether the policy is enabled or not.
  final pulumi.Input<String>? status;

  /// Creates a new [AzureADAuthenticationAsArmPolicy].
  /// [status] The value that indicates whether the policy is enabled or not.
  AzureADAuthenticationAsArmPolicy({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory AzureADAuthenticationAsArmPolicy.fromMap(Map<String, dynamic> map) {
    return AzureADAuthenticationAsArmPolicy(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

