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
  ManagedIdentityReferenceResponse({
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
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

