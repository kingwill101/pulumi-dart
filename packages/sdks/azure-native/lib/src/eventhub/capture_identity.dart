// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capture_identity_type.dart';

/// A value that indicates whether capture description is enabled.
class CaptureIdentity {
  /// Type of Azure Active Directory Managed Identity.
  final pulumi.Input<CaptureIdentityType>? type;
  /// ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [CaptureIdentity].
  /// [type] Type of Azure Active Directory Managed Identity.
  /// [userAssignedIdentity] ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  CaptureIdentity({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<CaptureIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CaptureIdentity.fromMap(Map<String, dynamic> map) {
    return CaptureIdentity(
      type: map['type'] == null ? null : (CaptureIdentityType.fromValue(map['type'] as String)).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity'] as String).input(),
    );
  }
}

