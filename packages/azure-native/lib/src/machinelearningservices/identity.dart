// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the resource.
class Identity {
  /// The identity type.
  final ResourceIdentityType? type;
  /// The user assigned identities associated with the resource.
  final List<String>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] The identity type.
  /// [userAssignedIdentities] The user assigned identities associated with the resource.
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

