// ignore_for_file: unused_element, unnecessary_cast


class UserAssignedIdentityProperties {
  /// ARM ID of user Identity selected for encryption
  final String? userAssignedIdentity;

  /// Creates a new [UserAssignedIdentityProperties].
  /// [userAssignedIdentity] ARM ID of user Identity selected for encryption
  UserAssignedIdentityProperties({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory UserAssignedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityProperties(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

