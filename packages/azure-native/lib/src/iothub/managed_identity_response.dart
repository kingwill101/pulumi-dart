// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the Managed identity.
class ManagedIdentityResponse {
  /// The user assigned identity.
  final String? userAssignedIdentity;

  /// Creates a new [ManagedIdentityResponse].
  /// [userAssignedIdentity] The user assigned identity.
  ManagedIdentityResponse({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

