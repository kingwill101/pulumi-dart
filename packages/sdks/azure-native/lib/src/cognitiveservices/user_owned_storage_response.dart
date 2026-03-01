// ignore_for_file: unused_element, unnecessary_cast


/// The user owned storage for Cognitive Services account.
class UserOwnedStorageResponse {
  final String? identityClientId;
  /// Full resource id of a Microsoft.Storage resource.
  final String? resourceId;

  /// Creates a new [UserOwnedStorageResponse].
  /// [identityClientId] Optional.
  /// [resourceId] Full resource id of a Microsoft.Storage resource.
  UserOwnedStorageResponse({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedStorageResponse.fromMap(Map<String, dynamic> map) {
    return UserOwnedStorageResponse(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

