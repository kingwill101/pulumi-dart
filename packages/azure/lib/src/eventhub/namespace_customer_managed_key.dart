// ignore_for_file: unused_element, unnecessary_cast


class NamespaceCustomerManagedKey {
  /// The ID of the User Assigned Identity that has access to the key.
  final String identityId;
  /// Used to specify whether enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  final bool? infrastructureEncryptionEnabled;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  final String keyVaultKeyId;

  /// Creates a new [NamespaceCustomerManagedKey].
  /// [identityId] The ID of the User Assigned Identity that has access to the key.
  /// [infrastructureEncryptionEnabled] Used to specify whether enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  NamespaceCustomerManagedKey({
    required this.identityId,
    this.infrastructureEncryptionEnabled,
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': identityId,
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory NamespaceCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return NamespaceCustomerManagedKey(
      identityId: map['identityId'] as String,
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : map['infrastructureEncryptionEnabled'] as bool,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
    );
  }
}

