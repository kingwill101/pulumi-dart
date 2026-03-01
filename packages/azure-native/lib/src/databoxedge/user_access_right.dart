// ignore_for_file: unused_element, unnecessary_cast


/// The mapping between a particular user and the access type on the SMB share.
class UserAccessRight {
  /// Type of access to be allowed for the user.
  final String accessType;
  /// User ID (already existing in the device).
  final String userId;

  /// Creates a new [UserAccessRight].
  /// [accessType] Type of access to be allowed for the user.
  /// [userId] User ID (already existing in the device).
  UserAccessRight({
    required this.accessType,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'userId': userId,
    };
  }

  factory UserAccessRight.fromMap(Map<String, dynamic> map) {
    return UserAccessRight(
      accessType: map['accessType'] as String,
      userId: map['userId'] as String,
    );
  }
}

