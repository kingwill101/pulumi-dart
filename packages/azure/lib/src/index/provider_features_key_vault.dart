// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesKeyVault {
  /// When enabled soft-deleted `azure.keyvault.KeyVault` resources will be permanently deleted (e.g purged), when destroyed
  final bool? purgeSoftDeleteOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Certificate` resources will be permanently deleted (e.g purged), when destroyed
  final bool? purgeSoftDeletedCertificatesOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be permanently deleted (e.g purged), when destroyed
  final bool? purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModule` resources will be permanently deleted (e.g purged), when destroyed
  final bool? purgeSoftDeletedHardwareSecurityModulesOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Key` resources will be permanently deleted (e.g purged), when destroyed
  final bool? purgeSoftDeletedKeysOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Secret` resources will be permanently deleted (e.g purged), when destroyed
  final bool? purgeSoftDeletedSecretsOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Certificate` resources will be restored, instead of creating new ones
  final bool? recoverSoftDeletedCertificates;
  /// When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be restored, instead of creating new ones
  final bool? recoverSoftDeletedHardwareSecurityModuleKeys;
  /// When enabled soft-deleted `azure.keyvault.KeyVault` resources will be restored, instead of creating new ones
  final bool? recoverSoftDeletedKeyVaults;
  /// When enabled soft-deleted `azure.keyvault.Key` resources will be restored, instead of creating new ones
  final bool? recoverSoftDeletedKeys;
  /// When enabled soft-deleted `azure.keyvault.Secret` resources will be restored, instead of creating new ones
  final bool? recoverSoftDeletedSecrets;

  /// Creates a new [ProviderFeaturesKeyVault].
  /// [purgeSoftDeleteOnDestroy] When enabled soft-deleted `azure.keyvault.KeyVault` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedCertificatesOnDestroy] When enabled soft-deleted `azure.keyvault.Certificate` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy] When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedHardwareSecurityModulesOnDestroy] When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModule` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedKeysOnDestroy] When enabled soft-deleted `azure.keyvault.Key` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedSecretsOnDestroy] When enabled soft-deleted `azure.keyvault.Secret` resources will be permanently deleted (e.g purged), when destroyed
  /// [recoverSoftDeletedCertificates] When enabled soft-deleted `azure.keyvault.Certificate` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedHardwareSecurityModuleKeys] When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedKeyVaults] When enabled soft-deleted `azure.keyvault.KeyVault` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedKeys] When enabled soft-deleted `azure.keyvault.Key` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedSecrets] When enabled soft-deleted `azure.keyvault.Secret` resources will be restored, instead of creating new ones
  ProviderFeaturesKeyVault({
    this.purgeSoftDeleteOnDestroy,
    this.purgeSoftDeletedCertificatesOnDestroy,
    this.purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy,
    this.purgeSoftDeletedHardwareSecurityModulesOnDestroy,
    this.purgeSoftDeletedKeysOnDestroy,
    this.purgeSoftDeletedSecretsOnDestroy,
    this.recoverSoftDeletedCertificates,
    this.recoverSoftDeletedHardwareSecurityModuleKeys,
    this.recoverSoftDeletedKeyVaults,
    this.recoverSoftDeletedKeys,
    this.recoverSoftDeletedSecrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'purgeSoftDeletedCertificatesOnDestroy': ?purgeSoftDeletedCertificatesOnDestroy,
      'purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy': ?purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy,
      'purgeSoftDeletedHardwareSecurityModulesOnDestroy': ?purgeSoftDeletedHardwareSecurityModulesOnDestroy,
      'purgeSoftDeletedKeysOnDestroy': ?purgeSoftDeletedKeysOnDestroy,
      'purgeSoftDeletedSecretsOnDestroy': ?purgeSoftDeletedSecretsOnDestroy,
      'recoverSoftDeletedCertificates': ?recoverSoftDeletedCertificates,
      'recoverSoftDeletedHardwareSecurityModuleKeys': ?recoverSoftDeletedHardwareSecurityModuleKeys,
      'recoverSoftDeletedKeyVaults': ?recoverSoftDeletedKeyVaults,
      'recoverSoftDeletedKeys': ?recoverSoftDeletedKeys,
      'recoverSoftDeletedSecrets': ?recoverSoftDeletedSecrets,
    };
  }

  factory ProviderFeaturesKeyVault.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesKeyVault(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
      purgeSoftDeletedCertificatesOnDestroy: map['purgeSoftDeletedCertificatesOnDestroy'] == null ? null : map['purgeSoftDeletedCertificatesOnDestroy'] as bool,
      purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy: map['purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy'] == null ? null : map['purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy'] as bool,
      purgeSoftDeletedHardwareSecurityModulesOnDestroy: map['purgeSoftDeletedHardwareSecurityModulesOnDestroy'] == null ? null : map['purgeSoftDeletedHardwareSecurityModulesOnDestroy'] as bool,
      purgeSoftDeletedKeysOnDestroy: map['purgeSoftDeletedKeysOnDestroy'] == null ? null : map['purgeSoftDeletedKeysOnDestroy'] as bool,
      purgeSoftDeletedSecretsOnDestroy: map['purgeSoftDeletedSecretsOnDestroy'] == null ? null : map['purgeSoftDeletedSecretsOnDestroy'] as bool,
      recoverSoftDeletedCertificates: map['recoverSoftDeletedCertificates'] == null ? null : map['recoverSoftDeletedCertificates'] as bool,
      recoverSoftDeletedHardwareSecurityModuleKeys: map['recoverSoftDeletedHardwareSecurityModuleKeys'] == null ? null : map['recoverSoftDeletedHardwareSecurityModuleKeys'] as bool,
      recoverSoftDeletedKeyVaults: map['recoverSoftDeletedKeyVaults'] == null ? null : map['recoverSoftDeletedKeyVaults'] as bool,
      recoverSoftDeletedKeys: map['recoverSoftDeletedKeys'] == null ? null : map['recoverSoftDeletedKeys'] as bool,
      recoverSoftDeletedSecrets: map['recoverSoftDeletedSecrets'] == null ? null : map['recoverSoftDeletedSecrets'] as bool,
    );
  }
}

