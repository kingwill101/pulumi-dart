// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_type.dart';

/// Properties to configure Identity for Bring your Own Keys
class Identity {
  /// Type of managed service identity.
  final ManagedServiceIdentityType? type;
  /// Properties for User Assigned Identities
  final List<String>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Properties for User Assigned Identities
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
      type: map['type'] == null ? null : ManagedServiceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

