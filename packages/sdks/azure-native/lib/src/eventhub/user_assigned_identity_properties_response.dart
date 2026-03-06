// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentityPropertiesResponse {
  /// ARM ID of user Identity selected for encryption
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [UserAssignedIdentityPropertiesResponse].
  /// [userAssignedIdentity] ARM ID of user Identity selected for encryption
  const UserAssignedIdentityPropertiesResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory UserAssignedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityPropertiesResponse(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

