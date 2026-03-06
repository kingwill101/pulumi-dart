// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned identity properties
class UserAssignedIdentityResponse {
  /// The client ID of the assigned identity.
  final pulumi.Input<String> clientId;
  /// The object ID of the user assigned identity.
  final pulumi.Input<String>? objectId;
  /// The principal ID of the assigned identity.
  final pulumi.Input<String> principalId;
  /// The resource ID of the user assigned identity.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [objectId] The object ID of the user assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  /// [resourceId] The resource ID of the user assigned identity.
  const UserAssignedIdentityResponse({
    required this.clientId,
    this.objectId,
    required this.principalId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'objectId': ?objectId,
      'principalId': principalId,
      'resourceId': ?resourceId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

