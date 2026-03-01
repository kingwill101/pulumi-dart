// ignore_for_file: unused_element, unnecessary_cast


/// Additional information of DPM Protected item.
class DPMProtectedItemExtendedInfo {
  /// Used Disk storage in bytes.
  final String? diskStorageUsedInBytes;
  /// To check if backup item is collocated.
  final bool? isCollocated;
  /// To check if backup item is cloud protected.
  final bool? isPresentOnCloud;
  /// Last backup status information on backup item.
  final String? lastBackupStatus;
  /// Last refresh time on backup item.
  final String? lastRefreshedAt;
  /// Oldest cloud recovery point time.
  final String? oldestRecoveryPoint;
  /// latest disk recovery point time.
  final String? onPremiseLatestRecoveryPoint;
  /// Oldest disk recovery point time.
  final String? onPremiseOldestRecoveryPoint;
  /// disk recovery point count.
  final int? onPremiseRecoveryPointCount;
  /// Attribute to provide information on various DBs.
  final Map<String, String>? protectableObjectLoadPath;
  /// To check if backup item is disk protected.
  final bool? protected;
  /// Protection group name of the backup item.
  final String? protectionGroupName;
  /// cloud recovery point count.
  final int? recoveryPointCount;
  /// total Disk storage in bytes.
  final String? totalDiskStorageSizeInBytes;

  /// Creates a new [DPMProtectedItemExtendedInfo].
  /// [diskStorageUsedInBytes] Used Disk storage in bytes.
  /// [isCollocated] To check if backup item is collocated.
  /// [isPresentOnCloud] To check if backup item is cloud protected.
  /// [lastBackupStatus] Last backup status information on backup item.
  /// [lastRefreshedAt] Last refresh time on backup item.
  /// [oldestRecoveryPoint] Oldest cloud recovery point time.
  /// [onPremiseLatestRecoveryPoint] latest disk recovery point time.
  /// [onPremiseOldestRecoveryPoint] Oldest disk recovery point time.
  /// [onPremiseRecoveryPointCount] disk recovery point count.
  /// [protectableObjectLoadPath] Attribute to provide information on various DBs.
  /// [protected] To check if backup item is disk protected.
  /// [protectionGroupName] Protection group name of the backup item.
  /// [recoveryPointCount] cloud recovery point count.
  /// [totalDiskStorageSizeInBytes] total Disk storage in bytes.
  DPMProtectedItemExtendedInfo({
    this.diskStorageUsedInBytes,
    this.isCollocated,
    this.isPresentOnCloud,
    this.lastBackupStatus,
    this.lastRefreshedAt,
    this.oldestRecoveryPoint,
    this.onPremiseLatestRecoveryPoint,
    this.onPremiseOldestRecoveryPoint,
    this.onPremiseRecoveryPointCount,
    this.protectableObjectLoadPath,
    this.protected,
    this.protectionGroupName,
    this.recoveryPointCount,
    this.totalDiskStorageSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskStorageUsedInBytes': ?diskStorageUsedInBytes,
      'isCollocated': ?isCollocated,
      'isPresentOnCloud': ?isPresentOnCloud,
      'lastBackupStatus': ?lastBackupStatus,
      'lastRefreshedAt': ?lastRefreshedAt,
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'onPremiseLatestRecoveryPoint': ?onPremiseLatestRecoveryPoint,
      'onPremiseOldestRecoveryPoint': ?onPremiseOldestRecoveryPoint,
      'onPremiseRecoveryPointCount': ?onPremiseRecoveryPointCount,
      'protectableObjectLoadPath': ?protectableObjectLoadPath,
      'protected': ?protected,
      'protectionGroupName': ?protectionGroupName,
      'recoveryPointCount': ?recoveryPointCount,
      'totalDiskStorageSizeInBytes': ?totalDiskStorageSizeInBytes,
    };
  }

  factory DPMProtectedItemExtendedInfo.fromMap(Map<String, dynamic> map) {
    return DPMProtectedItemExtendedInfo(
      diskStorageUsedInBytes: map['diskStorageUsedInBytes'] == null ? null : map['diskStorageUsedInBytes'] as String,
      isCollocated: map['isCollocated'] == null ? null : map['isCollocated'] as bool,
      isPresentOnCloud: map['isPresentOnCloud'] == null ? null : map['isPresentOnCloud'] as bool,
      lastBackupStatus: map['lastBackupStatus'] == null ? null : map['lastBackupStatus'] as String,
      lastRefreshedAt: map['lastRefreshedAt'] == null ? null : map['lastRefreshedAt'] as String,
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : map['oldestRecoveryPoint'] as String,
      onPremiseLatestRecoveryPoint: map['onPremiseLatestRecoveryPoint'] == null ? null : map['onPremiseLatestRecoveryPoint'] as String,
      onPremiseOldestRecoveryPoint: map['onPremiseOldestRecoveryPoint'] == null ? null : map['onPremiseOldestRecoveryPoint'] as String,
      onPremiseRecoveryPointCount: map['onPremiseRecoveryPointCount'] == null ? null : map['onPremiseRecoveryPointCount'] as int,
      protectableObjectLoadPath: map['protectableObjectLoadPath'] == null ? null : (map['protectableObjectLoadPath'] as Map).cast<String, String>(),
      protected: map['protected'] == null ? null : map['protected'] as bool,
      protectionGroupName: map['protectionGroupName'] == null ? null : map['protectionGroupName'] as String,
      recoveryPointCount: map['recoveryPointCount'] == null ? null : map['recoveryPointCount'] as int,
      totalDiskStorageSizeInBytes: map['totalDiskStorageSizeInBytes'] == null ? null : map['totalDiskStorageSizeInBytes'] as String,
    );
  }
}

