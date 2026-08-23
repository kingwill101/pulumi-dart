// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the user assigned identity.
class UserIdentityPropertiesResponse {
  /// The client ID of resource identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of resource identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserIdentityPropertiesResponse].
  /// [clientId] The client ID of resource identity.
  /// [principalId] The principal ID of resource identity.
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
