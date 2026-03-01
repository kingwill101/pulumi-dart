// ignore_for_file: unused_element, unnecessary_cast


/// The user owned storage for Cognitive Services account.
class UserOwnedStorage {
  final String? identityClientId;
  /// Full resource id of a Microsoft.Storage resource.
  final String? resourceId;

  /// Creates a new [UserOwnedStorage].
  /// [identityClientId] Optional.
  /// [resourceId] Full resource id of a Microsoft.Storage resource.
  UserOwnedStorage({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedStorage.fromMap(Map<String, dynamic> map) {
    return UserOwnedStorage(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

