// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_identity_properties.dart';

/// User assigned managed identity details
class UserAssignedManagedIdentityDetails {
  /// The ARM id of the assigned identity.
  final String? identityArmId;
  /// The name of the assigned identity.
  final String? identityName;
  /// User assigned managed identity properties
  final UserAssignedIdentityProperties? userAssignedIdentityProperties;

  /// Creates a new [UserAssignedManagedIdentityDetails].
  /// [identityArmId] The ARM id of the assigned identity.
  /// [identityName] The name of the assigned identity.
  /// [userAssignedIdentityProperties] User assigned managed identity properties
  UserAssignedManagedIdentityDetails({
    this.identityArmId,
    this.identityName,
    this.userAssignedIdentityProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityArmId': ?identityArmId,
      'identityName': ?identityName,
      'userAssignedIdentityProperties': ?userAssignedIdentityProperties == null ? null : userAssignedIdentityProperties!.toMap(),
    };
  }

  factory UserAssignedManagedIdentityDetails.fromMap(Map<String, dynamic> map) {
    return UserAssignedManagedIdentityDetails(
      identityArmId: map['identityArmId'] == null ? null : map['identityArmId'] as String,
      identityName: map['identityName'] == null ? null : map['identityName'] as String,
      userAssignedIdentityProperties: map['userAssignedIdentityProperties'] == null ? null : UserAssignedIdentityProperties.fromMap((map['userAssignedIdentityProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

