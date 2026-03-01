// ignore_for_file: unused_element, unnecessary_cast


/// All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
class RedisCommonPropertiesRedisConfiguration {
  /// Specifies whether AAD based authentication has been enabled or disabled for the cache
  final String? aadEnabled;
  /// Specifies whether the aof backup is enabled
  final String? aofBackupEnabled;
  /// First storage account connection string
  final String? aofStorageConnectionString0;
  /// Second storage account connection string
  final String? aofStorageConnectionString1;
  /// Specifies whether the authentication is disabled. Setting this property is highly discouraged from security point of view; you should never disable authentication using this property!
  final String? authnotrequired;
  /// Value in megabytes reserved for fragmentation per shard
  final String? maxfragmentationmemoryReserved;
  /// Value in megabytes reserved for non-cache usage per shard e.g. failover.
  final String? maxmemoryDelta;
  /// The eviction strategy used when your data won't fit within its memory limit.
  final String? maxmemoryPolicy;
  /// Value in megabytes reserved for non-cache usage per shard e.g. failover.
  final String? maxmemoryReserved;
  /// The keyspace events which should be monitored.
  final String? notifyKeyspaceEvents;
  /// Preferred auth method to communicate to storage account used for data persistence, specify SAS or ManagedIdentity, default value is SAS
  final String? preferredDataPersistenceAuthMethod;
  /// Specifies whether the RDB backup is enabled
  final String? rdbBackupEnabled;
  /// Specifies the frequency for creating rdb backup in minutes. Valid values: (15, 30, 60, 360, 720, 1440)
  final String? rdbBackupFrequency;
  /// Specifies the maximum number of snapshots for rdb backup
  final String? rdbBackupMaxSnapshotCount;
  /// The storage account connection string for storing rdb file
  final String? rdbStorageConnectionString;
  /// SubscriptionId of the storage account for persistence (aof/rdb) using ManagedIdentity.
  final String? storageSubscriptionId;

  /// Creates a new [RedisCommonPropertiesRedisConfiguration].
  /// [aadEnabled] Specifies whether AAD based authentication has been enabled or disabled for the cache
  /// [aofBackupEnabled] Specifies whether the aof backup is enabled
  /// [aofStorageConnectionString0] First storage account connection string
  /// [aofStorageConnectionString1] Second storage account connection string
  /// [authnotrequired] Specifies whether the authentication is disabled. Setting this property is highly discouraged from security point of view; you should never disable authentication using this property!
  /// [maxfragmentationmemoryReserved] Value in megabytes reserved for fragmentation per shard
  /// [maxmemoryDelta] Value in megabytes reserved for non-cache usage per shard e.g. failover.
  /// [maxmemoryPolicy] The eviction strategy used when your data won't fit within its memory limit.
  /// [maxmemoryReserved] Value in megabytes reserved for non-cache usage per shard e.g. failover.
  /// [notifyKeyspaceEvents] The keyspace events which should be monitored.
  /// [preferredDataPersistenceAuthMethod] Preferred auth method to communicate to storage account used for data persistence, specify SAS or ManagedIdentity, default value is SAS
  /// [rdbBackupEnabled] Specifies whether the RDB backup is enabled
  /// [rdbBackupFrequency] Specifies the frequency for creating rdb backup in minutes. Valid values: (15, 30, 60, 360, 720, 1440)
  /// [rdbBackupMaxSnapshotCount] Specifies the maximum number of snapshots for rdb backup
  /// [rdbStorageConnectionString] The storage account connection string for storing rdb file
  /// [storageSubscriptionId] SubscriptionId of the storage account for persistence (aof/rdb) using ManagedIdentity.
  RedisCommonPropertiesRedisConfiguration({
    this.aadEnabled,
    this.aofBackupEnabled,
    this.aofStorageConnectionString0,
    this.aofStorageConnectionString1,
    this.authnotrequired,
    this.maxfragmentationmemoryReserved,
    this.maxmemoryDelta,
    this.maxmemoryPolicy,
    this.maxmemoryReserved,
    this.notifyKeyspaceEvents,
    this.preferredDataPersistenceAuthMethod,
    this.rdbBackupEnabled,
    this.rdbBackupFrequency,
    this.rdbBackupMaxSnapshotCount,
    this.rdbStorageConnectionString,
    this.storageSubscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadEnabled': ?aadEnabled,
      'aofBackupEnabled': ?aofBackupEnabled,
      'aofStorageConnectionString0': ?aofStorageConnectionString0,
      'aofStorageConnectionString1': ?aofStorageConnectionString1,
      'authnotrequired': ?authnotrequired,
      'maxfragmentationmemoryReserved': ?maxfragmentationmemoryReserved,
      'maxmemoryDelta': ?maxmemoryDelta,
      'maxmemoryPolicy': ?maxmemoryPolicy,
      'maxmemoryReserved': ?maxmemoryReserved,
      'notifyKeyspaceEvents': ?notifyKeyspaceEvents,
      'preferredDataPersistenceAuthMethod': ?preferredDataPersistenceAuthMethod,
      'rdbBackupEnabled': ?rdbBackupEnabled,
      'rdbBackupFrequency': ?rdbBackupFrequency,
      'rdbBackupMaxSnapshotCount': ?rdbBackupMaxSnapshotCount,
      'rdbStorageConnectionString': ?rdbStorageConnectionString,
      'storageSubscriptionId': ?storageSubscriptionId,
    };
  }

  factory RedisCommonPropertiesRedisConfiguration.fromMap(Map<String, dynamic> map) {
    return RedisCommonPropertiesRedisConfiguration(
      aadEnabled: map['aadEnabled'] == null ? null : map['aadEnabled'] as String,
      aofBackupEnabled: map['aofBackupEnabled'] == null ? null : map['aofBackupEnabled'] as String,
      aofStorageConnectionString0: map['aofStorageConnectionString0'] == null ? null : map['aofStorageConnectionString0'] as String,
      aofStorageConnectionString1: map['aofStorageConnectionString1'] == null ? null : map['aofStorageConnectionString1'] as String,
      authnotrequired: map['authnotrequired'] == null ? null : map['authnotrequired'] as String,
      maxfragmentationmemoryReserved: map['maxfragmentationmemoryReserved'] == null ? null : map['maxfragmentationmemoryReserved'] as String,
      maxmemoryDelta: map['maxmemoryDelta'] == null ? null : map['maxmemoryDelta'] as String,
      maxmemoryPolicy: map['maxmemoryPolicy'] == null ? null : map['maxmemoryPolicy'] as String,
      maxmemoryReserved: map['maxmemoryReserved'] == null ? null : map['maxmemoryReserved'] as String,
      notifyKeyspaceEvents: map['notifyKeyspaceEvents'] == null ? null : map['notifyKeyspaceEvents'] as String,
      preferredDataPersistenceAuthMethod: map['preferredDataPersistenceAuthMethod'] == null ? null : map['preferredDataPersistenceAuthMethod'] as String,
      rdbBackupEnabled: map['rdbBackupEnabled'] == null ? null : map['rdbBackupEnabled'] as String,
      rdbBackupFrequency: map['rdbBackupFrequency'] == null ? null : map['rdbBackupFrequency'] as String,
      rdbBackupMaxSnapshotCount: map['rdbBackupMaxSnapshotCount'] == null ? null : map['rdbBackupMaxSnapshotCount'] as String,
      rdbStorageConnectionString: map['rdbStorageConnectionString'] == null ? null : map['rdbStorageConnectionString'] as String,
      storageSubscriptionId: map['storageSubscriptionId'] == null ? null : map['storageSubscriptionId'] as String,
    );
  }
}

