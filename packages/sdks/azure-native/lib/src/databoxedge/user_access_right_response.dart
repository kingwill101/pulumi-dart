// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping between a particular user and the access type on the SMB share.
class UserAccessRightResponse {
  /// Type of access to be allowed for the user.
  final pulumi.Input<String> accessType;

  /// User ID (already existing in the device).
  final pulumi.Input<String> userId;

  /// Creates a new [UserAccessRightResponse].
  /// [accessType] Type of access to be allowed for the user.
  /// [userId] User ID (already existing in the device).
  UserAccessRightResponse({required this.accessType, required this.userId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accessType': accessType, 'userId': userId};
  }

  factory UserAccessRightResponse.fromMap(Map<String, dynamic> map) {
    return UserAccessRightResponse(
      accessType: pulumi.Input.fromValue(map['accessType'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
