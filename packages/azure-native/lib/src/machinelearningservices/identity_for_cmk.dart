// ignore_for_file: unused_element, unnecessary_cast


/// Identity that will be used to access key vault for encryption at rest
class IdentityForCmk {
  /// The ArmId of the user assigned identity that will be used to access the customer managed key vault
  final String? userAssignedIdentity;

  /// Creates a new [IdentityForCmk].
  /// [userAssignedIdentity] The ArmId of the user assigned identity that will be used to access the customer managed key vault
  IdentityForCmk({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory IdentityForCmk.fromMap(Map<String, dynamic> map) {
    return IdentityForCmk(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

