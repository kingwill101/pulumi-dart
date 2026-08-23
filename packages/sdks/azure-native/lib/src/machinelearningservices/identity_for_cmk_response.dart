// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity object used for encryption.
class IdentityForCmkResponse {
  /// UserAssignedIdentity to be used to fetch the encryption key from keyVault
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [IdentityForCmkResponse].
  /// [userAssignedIdentity] UserAssignedIdentity to be used to fetch the encryption key from keyVault
  const IdentityForCmkResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory IdentityForCmkResponse.fromMap(Map<String, dynamic> map) {
    return IdentityForCmkResponse(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
