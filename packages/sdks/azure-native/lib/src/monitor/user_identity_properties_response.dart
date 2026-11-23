// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned identity properties.
class UserIdentityPropertiesResponse {
  /// The client id of user assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserIdentityPropertiesResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  const UserIdentityPropertiesResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityPropertiesResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
