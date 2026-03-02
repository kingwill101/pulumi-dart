// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about a user assigned identity.
class UserAssignedIdentity {
  /// The client ID of the user assigned identity.
  final pulumi.Input<String>? clientId;
  /// The object ID of the user assigned identity.
  final pulumi.Input<String>? objectId;
  /// The resource ID of the user assigned identity.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserAssignedIdentity].
  /// [clientId] The client ID of the user assigned identity.
  /// [objectId] The object ID of the user assigned identity.
  /// [resourceId] The resource ID of the user assigned identity.
  UserAssignedIdentity({
    this.clientId,
    this.objectId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
      'resourceId': ?resourceId,
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

