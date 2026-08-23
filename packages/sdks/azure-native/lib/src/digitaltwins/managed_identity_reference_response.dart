// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Managed Identity.
class ManagedIdentityReferenceResponse {
  /// The type of managed identity used.
  final pulumi.Input<String>? type;
  /// The user identity ARM resource id if the managed identity type is 'UserAssigned'.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [ManagedIdentityReferenceResponse].
  /// [type] The type of managed identity used.
  /// [userAssignedIdentity] The user identity ARM resource id if the managed identity type is 'UserAssigned'.
  const ManagedIdentityReferenceResponse({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ManagedIdentityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityReferenceResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
