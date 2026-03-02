// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentityResponse {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Optional.
  /// [principalId] Optional.
  UserAssignedIdentityResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
    );
  }
}

