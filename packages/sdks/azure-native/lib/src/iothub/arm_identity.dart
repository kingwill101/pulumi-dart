// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

class ArmIdentity {
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  final ResourceIdentityType? type;
  final List<String>? userAssignedIdentities;

  /// Creates a new [ArmIdentity].
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the service.
  /// [userAssignedIdentities] Optional.
  ArmIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ArmIdentity.fromMap(Map<String, dynamic> map) {
    return ArmIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

