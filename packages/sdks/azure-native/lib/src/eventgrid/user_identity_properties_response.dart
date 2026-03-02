// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information about the user identity.
class UserIdentityPropertiesResponse {
  /// The client id of user assigned identity.
  final pulumi.Input<String>? clientId;
  /// The principal id of user assigned identity.
  final pulumi.Input<String>? principalId;

  /// Creates a new [UserIdentityPropertiesResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  UserIdentityPropertiesResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityPropertiesResponse(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
    );
  }
}

