// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVaultsVault {
  /// The name of the OSS bucket of the Vault.
  final pulumi.Input<String> bucketName;
  /// The amount of backup data. The unit is Byte.
  final pulumi.Input<String> bytesDone;
  /// The creation time of the Vault. UNIX time in seconds.
  final pulumi.Input<String> createdTime;
  /// Whether to enable the deduplication function for the database backup Vault.
  final pulumi.Input<bool> dedup;
  /// The description of the vault.
  final pulumi.Input<String> description;
  /// The ID of vault.
  final pulumi.Input<String> id;
  /// Index available.
  final pulumi.Input<bool> indexAvailable;
  /// Index level.
  final pulumi.Input<String> indexLevel;
  /// Index update time.
  final pulumi.Input<String> indexUpdateTime;
  /// The time of the last remote backup synchronization.
  final pulumi.Input<String> latestReplicationTime;
  /// Billing model, possible values:
  /// * `FREE` is not billed
  /// * `V1` common vault billing model, including back-end storage capacity, client licenses and other billing items
  /// * `V2` new version of metering mode
  /// * `AEGIS` Billing method for cloud security use
  /// * `UNI_BACKUP` the backup of deduplication database
  /// * `ARCHIVE` archive library.
  final pulumi.Input<String> paymentType;
  /// Whether it is a remote backup warehouse. It's a boolean value.
  final pulumi.Input<bool> replication;
  /// The region ID to which the remote backup Vault belongs.
  final pulumi.Input<String> replicationSourceRegionId;
  /// The source vault ID of the remote backup Vault.
  final pulumi.Input<String> replicationSourceVaultId;
  /// Warehouse-level data retention days, only valid for archive libraries.
  final pulumi.Input<String> retention;
  /// Whether to enable the backup search function.
  final pulumi.Input<bool> searchEnabled;
  final pulumi.Input<List<String>> sourceTypes;
  /// The status of Vault. Valid values: `CREATED`, `ERROR`, `UNKNOWN`.
  final pulumi.Input<String> status;
  /// Backup vault storage usage. The unit is Byte.
  final pulumi.Input<String> storageSize;
  /// The update time of the Vault. UNIX time in seconds.
  final pulumi.Input<String> updatedTime;
  /// The ID of vault, same as `id`.
  final pulumi.Input<String> vaultId;
  /// The name of vault.
  final pulumi.Input<String> vaultName;
  /// Error status information of Vault. Only valid for remote backup warehouses. Only the remote backup warehouse is valid.
  final pulumi.Input<String> vaultStatusMessage;
  /// The storage class of vault. Valid values: `STANDARD`.
  final pulumi.Input<String> vaultStorageClass;
  /// The type of Vault. Valid values: `STANDARD`,`OTS_BACKUP`.
  final pulumi.Input<String> vaultType;

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
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bytesDone: pulumi.Input.fromValue(map['bytesDone'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      dedup: pulumi.Input.fromValue(map['dedup'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexAvailable: pulumi.Input.fromValue(map['indexAvailable'] as bool),
      indexLevel: pulumi.Input.fromValue(map['indexLevel'] as String),
      indexUpdateTime: pulumi.Input.fromValue(map['indexUpdateTime'] as String),
      latestReplicationTime: pulumi.Input.fromValue(map['latestReplicationTime'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      replication: pulumi.Input.fromValue(map['replication'] as bool),
      replicationSourceRegionId: pulumi.Input.fromValue(map['replicationSourceRegionId'] as String),
      replicationSourceVaultId: pulumi.Input.fromValue(map['replicationSourceVaultId'] as String),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      searchEnabled: pulumi.Input.fromValue(map['searchEnabled'] as bool),
      sourceTypes: pulumi.Input.fromValue((map['sourceTypes'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageSize: pulumi.Input.fromValue(map['storageSize'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
      vaultStatusMessage: pulumi.Input.fromValue(map['vaultStatusMessage'] as String),
      vaultStorageClass: pulumi.Input.fromValue(map['vaultStorageClass'] as String),
      vaultType: pulumi.Input.fromValue(map['vaultType'] as String),
    );
  }
}

