// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information about the user assigned identity.
class UserAssignedIdentityResponse {
  /// The client id of the User Assigned Identity Resource.
  final pulumi.Input<String> clientId;
  /// The object id of the User Assigned Identity Resource.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client id of the User Assigned Identity Resource.
  /// [principalId] The object id of the User Assigned Identity Resource.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

