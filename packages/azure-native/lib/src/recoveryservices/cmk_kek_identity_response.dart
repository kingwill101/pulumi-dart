// ignore_for_file: unused_element, unnecessary_cast


/// The details of the identity used for CMK
class CmkKekIdentityResponse {
  /// Indicate that system assigned identity should be used. Mutually exclusive with 'userAssignedIdentity' field
  final bool? useSystemAssignedIdentity;
  /// The user assigned identity to be used to grant permissions in case the type of identity used is UserAssigned
  final String? userAssignedIdentity;

  /// Creates a new [CmkKekIdentityResponse].
  /// [useSystemAssignedIdentity] Indicate that system assigned identity should be used. Mutually exclusive with 'userAssignedIdentity' field
  /// [userAssignedIdentity] The user assigned identity to be used to grant permissions in case the type of identity used is UserAssigned
  CmkKekIdentityResponse({
    this.useSystemAssignedIdentity,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useSystemAssignedIdentity': ?useSystemAssignedIdentity,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CmkKekIdentityResponse.fromMap(Map<String, dynamic> map) {
    return CmkKekIdentityResponse(
      useSystemAssignedIdentity: map['useSystemAssignedIdentity'] == null ? null : map['useSystemAssignedIdentity'] as bool,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

