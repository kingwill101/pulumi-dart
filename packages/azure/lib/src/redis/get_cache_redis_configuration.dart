// ignore_for_file: unused_element, unnecessary_cast


class GetCacheRedisConfiguration {
  /// Specifies if Microsoft Entra (AAD) authentication is enabled.
  final bool activeDirectoryAuthenticationEnabled;
  final bool aofBackupEnabled;
  final String aofStorageConnectionString0;
  final String aofStorageConnectionString1;
  final bool authenticationEnabled;
  final String dataPersistenceAuthenticationMethod;
  final int maxclients;
  /// Value in megabytes reserved to accommodate for memory fragmentation.
  final int maxfragmentationmemoryReserved;
  /// The max-memory delta for this Redis instance.
  final int maxmemoryDelta;
  /// How Redis will select what to remove when `maxmemory` is reached.
  final String maxmemoryPolicy;
  /// The value in megabytes reserved for non-cache usage e.g. failover
  final int maxmemoryReserved;
  final String notifyKeyspaceEvents;
  /// Is Backup Enabled? Only supported on Premium SKUs.
  final bool rdbBackupEnabled;
  /// The Backup Frequency in Minutes. Only supported on Premium SKUs.
  final int rdbBackupFrequency;
  /// The maximum number of snapshots that can be created as a backup.
  final int rdbBackupMaxSnapshotCount;
  /// The Connection String to the Storage Account. Only supported for Premium SKUs.
  final String rdbStorageConnectionString;
  /// The ID of the Subscription containing the Storage Account.
  final String storageAccountSubscriptionId;

  /// Creates a new [GetCacheRedisConfiguration].
  /// [activeDirectoryAuthenticationEnabled] Specifies if Microsoft Entra (AAD) authentication is enabled.
  /// [aofBackupEnabled] Required.
  /// [aofStorageConnectionString0] Required.
  /// [aofStorageConnectionString1] Required.
  /// [authenticationEnabled] Required.
  /// [dataPersistenceAuthenticationMethod] Required.
  /// [maxclients] Required.
  /// [maxfragmentationmemoryReserved] Value in megabytes reserved to accommodate for memory fragmentation.
  /// [maxmemoryDelta] The max-memory delta for this Redis instance.
  /// [maxmemoryPolicy] How Redis will select what to remove when `maxmemory` is reached.
  /// [maxmemoryReserved] The value in megabytes reserved for non-cache usage e.g. failover
  /// [notifyKeyspaceEvents] Required.
  /// [rdbBackupEnabled] Is Backup Enabled? Only supported on Premium SKUs.
  /// [rdbBackupFrequency] The Backup Frequency in Minutes. Only supported on Premium SKUs.
  /// [rdbBackupMaxSnapshotCount] The maximum number of snapshots that can be created as a backup.
  /// [rdbStorageConnectionString] The Connection String to the Storage Account. Only supported for Premium SKUs.
  /// [storageAccountSubscriptionId] The ID of the Subscription containing the Storage Account.
  GetCacheRedisConfiguration({
    required this.activeDirectoryAuthenticationEnabled,
    required this.aofBackupEnabled,
    required this.aofStorageConnectionString0,
    required this.aofStorageConnectionString1,
    required this.authenticationEnabled,
    required this.dataPersistenceAuthenticationMethod,
    required this.maxclients,
    required this.maxfragmentationmemoryReserved,
    required this.maxmemoryDelta,
    required this.maxmemoryPolicy,
    required this.maxmemoryReserved,
    required this.notifyKeyspaceEvents,
    required this.rdbBackupEnabled,
    required this.rdbBackupFrequency,
    required this.rdbBackupMaxSnapshotCount,
    required this.rdbStorageConnectionString,
    required this.storageAccountSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryAuthenticationEnabled': activeDirectoryAuthenticationEnabled,
      'aofBackupEnabled': aofBackupEnabled,
      'aofStorageConnectionString0': aofStorageConnectionString0,
      'aofStorageConnectionString1': aofStorageConnectionString1,
      'authenticationEnabled': authenticationEnabled,
      'dataPersistenceAuthenticationMethod': dataPersistenceAuthenticationMethod,
      'maxclients': maxclients,
      'maxfragmentationmemoryReserved': maxfragmentationmemoryReserved,
      'maxmemoryDelta': maxmemoryDelta,
      'maxmemoryPolicy': maxmemoryPolicy,
      'maxmemoryReserved': maxmemoryReserved,
      'notifyKeyspaceEvents': notifyKeyspaceEvents,
      'rdbBackupEnabled': rdbBackupEnabled,
      'rdbBackupFrequency': rdbBackupFrequency,
      'rdbBackupMaxSnapshotCount': rdbBackupMaxSnapshotCount,
      'rdbStorageConnectionString': rdbStorageConnectionString,
      'storageAccountSubscriptionId': storageAccountSubscriptionId,
    };
  }

  factory GetCacheRedisConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCacheRedisConfiguration(
      activeDirectoryAuthenticationEnabled: map['activeDirectoryAuthenticationEnabled'] as bool,
      aofBackupEnabled: map['aofBackupEnabled'] as bool,
      aofStorageConnectionString0: map['aofStorageConnectionString0'] as String,
      aofStorageConnectionString1: map['aofStorageConnectionString1'] as String,
      authenticationEnabled: map['authenticationEnabled'] as bool,
      dataPersistenceAuthenticationMethod: map['dataPersistenceAuthenticationMethod'] as String,
      maxclients: map['maxclients'] as int,
      maxfragmentationmemoryReserved: map['maxfragmentationmemoryReserved'] as int,
      maxmemoryDelta: map['maxmemoryDelta'] as int,
      maxmemoryPolicy: map['maxmemoryPolicy'] as String,
      maxmemoryReserved: map['maxmemoryReserved'] as int,
      notifyKeyspaceEvents: map['notifyKeyspaceEvents'] as String,
      rdbBackupEnabled: map['rdbBackupEnabled'] as bool,
      rdbBackupFrequency: map['rdbBackupFrequency'] as int,
      rdbBackupMaxSnapshotCount: map['rdbBackupMaxSnapshotCount'] as int,
      rdbStorageConnectionString: map['rdbStorageConnectionString'] as String,
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] as String,
    );
  }
}

