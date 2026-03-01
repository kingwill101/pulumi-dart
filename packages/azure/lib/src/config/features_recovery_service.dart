// ignore_for_file: unused_element, unnecessary_cast


class FeaturesRecoveryService {
  final bool? purgeProtectedItemsFromVaultOnDestroy;
  final bool? vmBackupStopProtectionAndRetainDataOnDestroy;
  final bool? vmBackupSuspendProtectionAndRetainDataOnDestroy;

  /// Creates a new [FeaturesRecoveryService].
  /// [purgeProtectedItemsFromVaultOnDestroy] Optional.
  /// [vmBackupStopProtectionAndRetainDataOnDestroy] Optional.
  /// [vmBackupSuspendProtectionAndRetainDataOnDestroy] Optional.
  FeaturesRecoveryService({
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

  factory FeaturesRecoveryService.fromMap(Map<String, dynamic> map) {
    return FeaturesRecoveryService(
      purgeProtectedItemsFromVaultOnDestroy: map['purgeProtectedItemsFromVaultOnDestroy'] == null ? null : map['purgeProtectedItemsFromVaultOnDestroy'] as bool,
      vmBackupStopProtectionAndRetainDataOnDestroy: map['vmBackupStopProtectionAndRetainDataOnDestroy'] == null ? null : map['vmBackupStopProtectionAndRetainDataOnDestroy'] as bool,
      vmBackupSuspendProtectionAndRetainDataOnDestroy: map['vmBackupSuspendProtectionAndRetainDataOnDestroy'] == null ? null : map['vmBackupSuspendProtectionAndRetainDataOnDestroy'] as bool,
    );
  }
}

