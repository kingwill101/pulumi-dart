// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity object used for encryption.
class IdentityForCmk {
  /// UserAssignedIdentity to be used to fetch the encryption key from keyVault
  final pulumi.Input<String?>? userAssignedIdentity;

  /// Creates a new [IdentityForCmk].
  /// [userAssignedIdentity] UserAssignedIdentity to be used to fetch the encryption key from keyVault
  const IdentityForCmk({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory IdentityForCmk.fromMap(Map<String, dynamic> map) {
    return IdentityForCmk(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
