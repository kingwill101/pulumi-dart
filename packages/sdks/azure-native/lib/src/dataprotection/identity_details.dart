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
  const IdentityDetails({
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
      useSystemAssignedIdentity: (() { final guardedValue = map['useSystemAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAssignedIdentityArmUrl: (() { final guardedValue = map['userAssignedIdentityArmUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

