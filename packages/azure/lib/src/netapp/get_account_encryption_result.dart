// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountEncryption.
class GetAccountEncryptionResult {
  final String crossTenantKeyVaultResourceId;
  final String encryptionKey;
  final String federatedClientId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String netappAccountId;
  final String systemAssignedIdentityPrincipalId;
  final String userAssignedIdentityId;

  /// Creates a new [GetAccountEncryptionResult].
  /// [crossTenantKeyVaultResourceId] Required.
  /// [encryptionKey] Required.
  /// [federatedClientId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [netappAccountId] Required.
  /// [systemAssignedIdentityPrincipalId] Required.
  /// [userAssignedIdentityId] Required.
  GetAccountEncryptionResult({
    required this.crossTenantKeyVaultResourceId,
    required this.encryptionKey,
    required this.federatedClientId,
    required this.id,
    required this.netappAccountId,
    required this.systemAssignedIdentityPrincipalId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantKeyVaultResourceId': crossTenantKeyVaultResourceId,
      'encryptionKey': encryptionKey,
      'federatedClientId': federatedClientId,
      'id': id,
      'netappAccountId': netappAccountId,
      'systemAssignedIdentityPrincipalId': systemAssignedIdentityPrincipalId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory GetAccountEncryptionResult.fromMap(Map<String, dynamic> map) {
    return GetAccountEncryptionResult(
      crossTenantKeyVaultResourceId: map['crossTenantKeyVaultResourceId'] as String,
      encryptionKey: map['encryptionKey'] as String,
      federatedClientId: map['federatedClientId'] as String,
      id: map['id'] as String,
      netappAccountId: map['netappAccountId'] as String,
      systemAssignedIdentityPrincipalId: map['systemAssignedIdentityPrincipalId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
    );
  }
}

