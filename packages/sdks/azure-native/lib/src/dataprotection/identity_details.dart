// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityDetails {
  /// Specifies if the BI is protected by System Identity.
  final pulumi.Input<bool>? useSystemAssignedIdentity;
  /// ARM URL for User Assigned Identity.
  final pulumi.Input<String>? userAssignedIdentityArmUrl;

  /// Creates a new [IdentityDetails].
  /// [useSystemAssignedIdentity] Specifies if the BI is protected by System Identity.
  /// [userAssignedIdentityArmUrl] ARM URL for User Assigned Identity.
  IdentityDetails({
    this.useSystemAssignedIdentity,
    this.userAssignedIdentityArmUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useSystemAssignedIdentity': ?useSystemAssignedIdentity,
      'userAssignedIdentityArmUrl': ?userAssignedIdentityArmUrl,
    };
  }

  factory IdentityDetails.fromMap(Map<String, dynamic> map) {
    return IdentityDetails(
      useSystemAssignedIdentity: map['useSystemAssignedIdentity'] == null ? null : (map['useSystemAssignedIdentity'] as bool).input(),
      userAssignedIdentityArmUrl: map['userAssignedIdentityArmUrl'] == null ? null : (map['userAssignedIdentityArmUrl'] as String).input(),
    );
  }
}

