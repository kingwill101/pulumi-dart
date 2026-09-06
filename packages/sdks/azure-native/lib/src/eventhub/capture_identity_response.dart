// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A value that indicates whether capture description is enabled.
class CaptureIdentityResponse {
  /// Type of Azure Active Directory Managed Identity.
  final pulumi.Input<String?>? type;
  /// ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  final pulumi.Input<String?>? userAssignedIdentity;

  /// Creates a new [CaptureIdentityResponse].
  /// [type] Type of Azure Active Directory Managed Identity.
  /// [userAssignedIdentity] ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  const CaptureIdentityResponse({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CaptureIdentityResponse.fromMap(Map<String, dynamic> map) {
    return CaptureIdentityResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
