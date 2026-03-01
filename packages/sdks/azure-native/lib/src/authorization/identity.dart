// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the resource.  Policy assignments support a maximum of one identity.  That is either a system assigned identity or a single user assigned identity.
class Identity {
  /// The identity type. This is the only required field when adding a system or user assigned identity to a resource.
  final ResourceIdentityType? type;
  /// The user identity associated with the policy. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final List<String>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] The identity type. This is the only required field when adding a system or user assigned identity to a resource.
  /// [userAssignedIdentities] The user identity associated with the policy. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  Identity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

