// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity that will be used to access key vault for encryption at rest
class IdentityForCmk {
  /// The ArmId of the user assigned identity that will be used to access the customer managed key vault
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [IdentityForCmk].
  /// [userAssignedIdentity] The ArmId of the user assigned identity that will be used to access the customer managed key vault
  IdentityForCmk({
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

