// ignore_for_file: unused_element, unnecessary_cast


/// Describes information on user who created this ComputeInstance.
class ComputeInstanceCreatedByResponse {
  /// Uniquely identifies the user within his/her organization.
  final String userId;
  /// Name of the user.
  final String userName;
  /// Uniquely identifies user' Azure Active Directory organization.
  final String userOrgId;

  /// Creates a new [ComputeInstanceCreatedByResponse].
  /// [userId] Uniquely identifies the user within his/her organization.
  /// [userName] Name of the user.
  /// [userOrgId] Uniquely identifies user' Azure Active Directory organization.
  ComputeInstanceCreatedByResponse({
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
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      userOrgId: map['userOrgId'] as String,
    );
  }
}

