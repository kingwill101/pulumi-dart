// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Managed identity.
class ManagedIdentityResponse {
  /// The user assigned identity.
  final pulumi.Input<String?>? userAssignedIdentity;

  /// Creates a new [ManagedIdentityResponse].
  /// [userAssignedIdentity] The user assigned identity.
  const ManagedIdentityResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
