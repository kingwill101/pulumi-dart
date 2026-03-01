// ignore_for_file: unused_element, unnecessary_cast

import 'capture_identity_type.dart';

/// A value that indicates whether capture description is enabled.
class CaptureIdentity {
  /// Type of Azure Active Directory Managed Identity.
  final CaptureIdentityType? type;
  /// ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  final String? userAssignedIdentity;

  /// Creates a new [CaptureIdentity].
  /// [type] Type of Azure Active Directory Managed Identity.
  /// [userAssignedIdentity] ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  CaptureIdentity({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CaptureIdentity.fromMap(Map<String, dynamic> map) {
    return CaptureIdentity(
      type: map['type'] == null ? null : CaptureIdentityType.fromValue(map['type'] as String),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

