// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesRecoveryService {
  final bool? purgeProtectedItemsFromVaultOnDestroy;
  final bool? vmBackupStopProtectionAndRetainDataOnDestroy;
  final bool? vmBackupSuspendProtectionAndRetainDataOnDestroy;

  /// Creates a new [ProviderFeaturesRecoveryService].
  /// [purgeProtectedItemsFromVaultOnDestroy] Optional.
  /// [vmBackupStopProtectionAndRetainDataOnDestroy] Optional.
  /// [vmBackupSuspendProtectionAndRetainDataOnDestroy] Optional.
  ProviderFeaturesRecoveryService({
    this.purgeProtectedItemsFromVaultOnDestroy,
    this.vmBackupStopProtectionAndRetainDataOnDestroy,
    this.vmBackupSuspendProtectionAndRetainDataOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeProtectedItemsFromVaultOnDestroy': ?purgeProtectedItemsFromVaultOnDestroy,
      'vmBackupStopProtectionAndRetainDataOnDestroy': ?vmBackupStopProtectionAndRetainDataOnDestroy,
      'vmBackupSuspendProtectionAndRetainDataOnDestroy': ?vmBackupSuspendProtectionAndRetainDataOnDestroy,
    };
  }

  factory ProviderFeaturesRecoveryService.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesRecoveryService(
      purgeProtectedItemsFromVaultOnDestroy: map['purgeProtectedItemsFromVaultOnDestroy'] == null ? null : map['purgeProtectedItemsFromVaultOnDestroy'] as bool,
      vmBackupStopProtectionAndRetainDataOnDestroy: map['vmBackupStopProtectionAndRetainDataOnDestroy'] == null ? null : map['vmBackupStopProtectionAndRetainDataOnDestroy'] as bool,
      vmBackupSuspendProtectionAndRetainDataOnDestroy: map['vmBackupSuspendProtectionAndRetainDataOnDestroy'] == null ? null : map['vmBackupSuspendProtectionAndRetainDataOnDestroy'] as bool,
    );
  }
}

