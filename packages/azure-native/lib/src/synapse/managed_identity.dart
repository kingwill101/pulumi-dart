// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// The workspace managed identity
class ManagedIdentity {
  /// The type of managed identity for the workspace
  final ResourceIdentityType? type;
  /// The user assigned managed identities.
  final List<String>? userAssignedIdentities;

  /// Creates a new [ManagedIdentity].
  /// [type] The type of managed identity for the workspace
  /// [userAssignedIdentities] The user assigned managed identities.
  ManagedIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

