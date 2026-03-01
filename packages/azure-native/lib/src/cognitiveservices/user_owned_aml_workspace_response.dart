// ignore_for_file: unused_element, unnecessary_cast


/// The user owned AML workspace for Cognitive Services account.
class UserOwnedAmlWorkspaceResponse {
  /// Identity Client id of a AML workspace resource.
  final String? identityClientId;
  /// Full resource id of a AML workspace resource.
  final String? resourceId;

  /// Creates a new [UserOwnedAmlWorkspaceResponse].
  /// [identityClientId] Identity Client id of a AML workspace resource.
  /// [resourceId] Full resource id of a AML workspace resource.
  UserOwnedAmlWorkspaceResponse({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedAmlWorkspaceResponse.fromMap(Map<String, dynamic> map) {
    return UserOwnedAmlWorkspaceResponse(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

