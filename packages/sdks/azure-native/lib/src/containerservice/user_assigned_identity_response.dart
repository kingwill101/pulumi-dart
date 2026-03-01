// ignore_for_file: unused_element, unnecessary_cast


/// User assigned identity properties
class UserAssignedIdentityResponse {
  /// The client ID of the assigned identity.
  final String clientId;
  /// The object ID of the user assigned identity.
  final String? objectId;
  /// The principal ID of the assigned identity.
  final String principalId;
  /// The resource ID of the user assigned identity.
  final String? resourceId;

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
      clientId: map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      principalId: map['principalId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

