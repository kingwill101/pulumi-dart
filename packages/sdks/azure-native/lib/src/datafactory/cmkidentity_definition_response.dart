// ignore_for_file: unused_element, unnecessary_cast


/// Managed Identity used for CMK.
class CMKIdentityDefinitionResponse {
  /// The resource id of the user assigned identity to authenticate to customer's key vault.
  final String? userAssignedIdentity;

  /// Creates a new [CMKIdentityDefinitionResponse].
  /// [userAssignedIdentity] The resource id of the user assigned identity to authenticate to customer's key vault.
  CMKIdentityDefinitionResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CMKIdentityDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CMKIdentityDefinitionResponse(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

