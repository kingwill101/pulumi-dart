// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Msi identity details of the resource
class ResourceIdentity {
  /// Identity type
  final pulumi.Input<String>? type;
  /// User Assigned Identities
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ResourceIdentity].
  /// [type] Identity type
  /// [userAssignedIdentities] User Assigned Identities
  ResourceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

