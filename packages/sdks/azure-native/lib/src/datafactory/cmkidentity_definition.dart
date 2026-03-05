// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Identity used for CMK.
class CMKIdentityDefinition {
  /// The resource id of the user assigned identity to authenticate to customer's key vault.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [CMKIdentityDefinition].
  /// [userAssignedIdentity] The resource id of the user assigned identity to authenticate to customer's key vault.
  CMKIdentityDefinition({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CMKIdentityDefinition.fromMap(Map<String, dynamic> map) {
    return CMKIdentityDefinition(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

