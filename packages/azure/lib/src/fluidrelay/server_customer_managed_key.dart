// ignore_for_file: unused_element, unnecessary_cast


class ServerCustomerManagedKey {
  /// The Key Vault Key Id that will be used to encrypt the Fluid Relay Server.
  final String keyVaultKeyId;
  /// The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  final String userAssignedIdentityId;

  /// Creates a new [ServerCustomerManagedKey].
  /// [keyVaultKeyId] The Key Vault Key Id that will be used to encrypt the Fluid Relay Server.
  /// [userAssignedIdentityId] The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  ServerCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory ServerCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return ServerCustomerManagedKey(
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
    );
  }
}

