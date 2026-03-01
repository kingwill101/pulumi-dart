// ignore_for_file: unused_element, unnecessary_cast


/// The user owned AML workspace for Cognitive Services account.
class UserOwnedAmlWorkspace {
  /// Identity Client id of a AML workspace resource.
  final String? identityClientId;
  /// Full resource id of a AML workspace resource.
  final String? resourceId;

  /// Creates a new [UserOwnedAmlWorkspace].
  /// [identityClientId] Identity Client id of a AML workspace resource.
  /// [resourceId] Full resource id of a AML workspace resource.
  UserOwnedAmlWorkspace({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedAmlWorkspace.fromMap(Map<String, dynamic> map) {
    return UserOwnedAmlWorkspace(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

