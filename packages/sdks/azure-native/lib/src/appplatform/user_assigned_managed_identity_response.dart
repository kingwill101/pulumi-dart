// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the user-assigned managed identity assigned to an App.
class UserAssignedManagedIdentityResponse {
  /// Client Id of user-assigned managed identity.
  final pulumi.Input<String> clientId;
  /// Principal Id of user-assigned managed identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedManagedIdentityResponse].
  /// [clientId] Client Id of user-assigned managed identity.
  /// [principalId] Principal Id of user-assigned managed identity.
  UserAssignedManagedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}

