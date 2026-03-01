// ignore_for_file: unused_element, unnecessary_cast


class GetCustomerManagedKey {
  /// The ID of the key vault key used for encryption.
  final String keyVaultKeyId;
  /// The ID of the User Assigned Identity that has access to the Key Vault Key.
  final String userAssignedIdentityId;

  /// Creates a new [GetCustomerManagedKey].
  /// [keyVaultKeyId] The ID of the key vault key used for encryption.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity that has access to the Key Vault Key.
  GetCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory GetCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return GetCustomerManagedKey(
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
    );
  }
}

