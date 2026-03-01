// ignore_for_file: unused_element, unnecessary_cast


/// A value that indicates whether capture description is enabled.
class CaptureIdentityResponse {
  /// Type of Azure Active Directory Managed Identity.
  final String? type;
  /// ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  final String? userAssignedIdentity;

  /// Creates a new [CaptureIdentityResponse].
  /// [type] Type of Azure Active Directory Managed Identity.
  /// [userAssignedIdentity] ARM ID of Managed User Identity. This property is required is the type is UserAssignedIdentity. If type is SystemAssigned, then the System Assigned Identity Associated with the namespace will be used.
  CaptureIdentityResponse({
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
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

