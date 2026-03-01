// ignore_for_file: unused_element, unnecessary_cast


/// Managed Identity used for CMK.
class CMKIdentityDefinition {
  /// The resource id of the user assigned identity to authenticate to customer's key vault.
  final String? userAssignedIdentity;

  /// Creates a new [CMKIdentityDefinition].
  /// [userAssignedIdentity] The resource id of the user assigned identity to authenticate to customer's key vault.
  CMKIdentityDefinition({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CMKIdentityDefinition.fromMap(Map<String, dynamic> map) {
    return CMKIdentityDefinition(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

