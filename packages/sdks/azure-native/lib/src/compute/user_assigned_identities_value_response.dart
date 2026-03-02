// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentitiesValueResponse {
  /// The client id of user assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentitiesValueResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  UserAssignedIdentitiesValueResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentitiesValueResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentitiesValueResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

