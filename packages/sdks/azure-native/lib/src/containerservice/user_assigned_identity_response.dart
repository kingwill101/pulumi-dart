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
  UserAssignedIdentityResponse({
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
      clientId: (map['clientId'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

