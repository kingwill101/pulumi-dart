// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the resource.
class ManagedServiceIdentity {
  /// The type of identity used for the resource. The type 'SystemAssigned,UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final ResourceIdentityType? type;
  /// The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final List<String>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [type] The type of identity used for the resource. The type 'SystemAssigned,UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ManagedServiceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

