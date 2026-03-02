// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Managed Identity.
class ManagedIdentityReference {
  /// The type of managed identity used.
  final pulumi.Input<String>? type;
  /// The user identity ARM resource id if the managed identity type is 'UserAssigned'.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [ManagedIdentityReference].
  /// [type] The type of managed identity used.
  /// [userAssignedIdentity] The user identity ARM resource id if the managed identity type is 'UserAssigned'.
  ManagedIdentityReference({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ManagedIdentityReference.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityReference(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

