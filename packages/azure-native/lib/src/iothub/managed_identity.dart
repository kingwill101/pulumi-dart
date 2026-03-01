// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the Managed identity.
class ManagedIdentity {
  /// The user assigned identity.
  final String? userAssignedIdentity;

  /// Creates a new [ManagedIdentity].
  /// [userAssignedIdentity] The user assigned identity.
  ManagedIdentity({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

