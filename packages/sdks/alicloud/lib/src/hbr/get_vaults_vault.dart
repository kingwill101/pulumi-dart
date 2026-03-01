// ignore_for_file: unused_element, unnecessary_cast


class GetVaultsVault {
  /// The name of the OSS bucket of the Vault.
  final String bucketName;
  /// The amount of backup data. The unit is Byte.
  final String bytesDone;
  /// The creation time of the Vault. UNIX time in seconds.
  final String createdTime;
  /// Whether to enable the deduplication function for the database backup Vault.
  final bool dedup;
  /// The description of the vault.
  final String description;
  /// The ID of vault.
  final String id;
  /// Index available.
  final bool indexAvailable;
  /// Index level.
  final String indexLevel;
  /// Index update time.
  final String indexUpdateTime;
  /// The time of the last remote backup synchronization.
  final String latestReplicationTime;
  /// Billing model, possible values:
  /// * `FREE` is not billed
  /// * `V1` common vault billing model, including back-end storage capacity, client licenses and other billing items
  /// * `V2` new version of metering mode
  /// * `AEGIS` Billing method for cloud security use
  /// * `UNI_BACKUP` the backup of deduplication database
  /// * `ARCHIVE` archive library.
  final String paymentType;
  /// Whether it is a remote backup warehouse. It's a boolean value.
  final bool replication;
  /// The region ID to which the remote backup Vault belongs.
  final String replicationSourceRegionId;
  /// The source vault ID of the remote backup Vault.
  final String replicationSourceVaultId;
  /// Warehouse-level data retention days, only valid for archive libraries.
  final String retention;
  /// Whether to enable the backup search function.
  final bool searchEnabled;
  final List<String> sourceTypes;
  /// The status of Vault. Valid values: `CREATED`, `ERROR`, `UNKNOWN`.
  final String status;
  /// Backup vault storage usage. The unit is Byte.
  final String storageSize;
  /// The update time of the Vault. UNIX time in seconds.
  final String updatedTime;
  /// The ID of vault, same as `id`.
  final String vaultId;
  /// The name of vault.
  final String vaultName;
  /// Error status information of Vault. Only valid for remote backup warehouses. Only the remote backup warehouse is valid.
  final String vaultStatusMessage;
  /// The storage class of vault. Valid values: `STANDARD`.
  final String vaultStorageClass;
  /// The type of Vault. Valid values: `STANDARD`,`OTS_BACKUP`.
  final String vaultType;

  /// Creates a new [GetVaultsVault].
  /// [bucketName] The name of the OSS bucket of the Vault.
  /// [bytesDone] The amount of backup data. The unit is Byte.
  /// [createdTime] The creation time of the Vault. UNIX time in seconds.
  /// [dedup] Whether to enable the deduplication function for the database backup Vault.
  /// [description] The description of the vault.
  /// [id] The ID of vault.
  /// [indexAvailable] Index available.
  /// [indexLevel] Index level.
  /// [indexUpdateTime] Index update time.
  /// [latestReplicationTime] The time of the last remote backup synchronization.
  /// [paymentType] Billing model, possible values:
  /// [replication] Whether it is a remote backup warehouse. It's a boolean value.
  /// [replicationSourceRegionId] The region ID to which the remote backup Vault belongs.
  /// [replicationSourceVaultId] The source vault ID of the remote backup Vault.
  /// [retention] Warehouse-level data retention days, only valid for archive libraries.
  /// [searchEnabled] Whether to enable the backup search function.
  /// [sourceTypes] Required.
  /// [status] The status of Vault. Valid values: `CREATED`, `ERROR`, `UNKNOWN`.
  /// [storageSize] Backup vault storage usage. The unit is Byte.
  /// [updatedTime] The update time of the Vault. UNIX time in seconds.
  /// [vaultId] The ID of vault, same as `id`.
  /// [vaultName] The name of vault.
  /// [vaultStatusMessage] Error status information of Vault. Only valid for remote backup warehouses. Only the remote backup warehouse is valid.
  /// [vaultStorageClass] The storage class of vault. Valid values: `STANDARD`.
  /// [vaultType] The type of Vault. Valid values: `STANDARD`,`OTS_BACKUP`.
  GetVaultsVault({
    required this.bucketName,
    required this.bytesDone,
    required this.createdTime,
    required this.dedup,
    required this.description,
    required this.id,
    required this.indexAvailable,
    required this.indexLevel,
    required this.indexUpdateTime,
    required this.latestReplicationTime,
    required this.paymentType,
    required this.replication,
    required this.replicationSourceRegionId,
    required this.replicationSourceVaultId,
    required this.retention,
    required this.searchEnabled,
    required this.sourceTypes,
    required this.status,
    required this.storageSize,
    required this.updatedTime,
    required this.vaultId,
    required this.vaultName,
    required this.vaultStatusMessage,
    required this.vaultStorageClass,
    required this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bytesDone': bytesDone,
      'createdTime': createdTime,
      'dedup': dedup,
      'description': description,
      'id': id,
      'indexAvailable': indexAvailable,
      'indexLevel': indexLevel,
      'indexUpdateTime': indexUpdateTime,
      'latestReplicationTime': latestReplicationTime,
      'paymentType': paymentType,
      'replication': replication,
      'replicationSourceRegionId': replicationSourceRegionId,
      'replicationSourceVaultId': replicationSourceVaultId,
      'retention': retention,
      'searchEnabled': searchEnabled,
      'sourceTypes': sourceTypes,
      'status': status,
      'storageSize': storageSize,
      'updatedTime': updatedTime,
      'vaultId': vaultId,
      'vaultName': vaultName,
      'vaultStatusMessage': vaultStatusMessage,
      'vaultStorageClass': vaultStorageClass,
      'vaultType': vaultType,
    };
  }

  factory GetVaultsVault.fromMap(Map<String, dynamic> map) {
    return GetVaultsVault(
      bucketName: map['bucketName'] as String,
      bytesDone: map['bytesDone'] as String,
      createdTime: map['createdTime'] as String,
      dedup: map['dedup'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      indexAvailable: map['indexAvailable'] as bool,
      indexLevel: map['indexLevel'] as String,
      indexUpdateTime: map['indexUpdateTime'] as String,
      latestReplicationTime: map['latestReplicationTime'] as String,
      paymentType: map['paymentType'] as String,
      replication: map['replication'] as bool,
      replicationSourceRegionId: map['replicationSourceRegionId'] as String,
      replicationSourceVaultId: map['replicationSourceVaultId'] as String,
      retention: map['retention'] as String,
      searchEnabled: map['searchEnabled'] as bool,
      sourceTypes: (map['sourceTypes'] as List).cast<String>(),
      status: map['status'] as String,
      storageSize: map['storageSize'] as String,
      updatedTime: map['updatedTime'] as String,
      vaultId: map['vaultId'] as String,
      vaultName: map['vaultName'] as String,
      vaultStatusMessage: map['vaultStatusMessage'] as String,
      vaultStorageClass: map['vaultStorageClass'] as String,
      vaultType: map['vaultType'] as String,
    );
  }
}

