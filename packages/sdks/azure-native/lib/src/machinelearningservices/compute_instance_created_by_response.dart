// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes information on user who created this ComputeInstance.
class ComputeInstanceCreatedByResponse {
  /// Uniquely identifies the user within his/her organization.
  final pulumi.Input<String> userId;
  /// Name of the user.
  final pulumi.Input<String> userName;
  /// Uniquely identifies user' Azure Active Directory organization.
  final pulumi.Input<String> userOrgId;

  /// Creates a new [ComputeInstanceCreatedByResponse].
  /// [userId] Uniquely identifies the user within his/her organization.
  /// [userName] Name of the user.
  /// [userOrgId] Uniquely identifies user' Azure Active Directory organization.
  const ComputeInstanceCreatedByResponse({
    required this.userId,
    required this.userName,
    required this.userOrgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'userName': userName,
      'userOrgId': userOrgId,
    };
  }

  factory ComputeInstanceCreatedByResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceCreatedByResponse(
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      userOrgId: pulumi.Input.fromValue(map['userOrgId'] as String),
    );
  }
}
