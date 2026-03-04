// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentitiesPropertiesResponse {
  /// The client id of user assigned identity.
  final pulumi.Input<String> clientId;

  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentitiesPropertiesResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  UserAssignedIdentitiesPropertiesResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientId': clientId, 'principalId': principalId};
  }

  factory UserAssignedIdentitiesPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserAssignedIdentitiesPropertiesResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
