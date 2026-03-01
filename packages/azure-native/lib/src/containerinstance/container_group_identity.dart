// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the container group.
class ContainerGroupIdentity {
  /// The type of identity used for the container group. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the container group.
  final ResourceIdentityType? type;
  /// The list of user identities associated with the container group.
  final List<String>? userAssignedIdentities;

  /// Creates a new [ContainerGroupIdentity].
  /// [type] The type of identity used for the container group. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the container group.
  /// [userAssignedIdentities] The list of user identities associated with the container group.
  ContainerGroupIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ContainerGroupIdentity.fromMap(Map<String, dynamic> map) {
    return ContainerGroupIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

