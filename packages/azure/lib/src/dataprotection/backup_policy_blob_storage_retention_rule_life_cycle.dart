// ignore_for_file: unused_element, unnecessary_cast


class BackupPolicyBlobStorageRetentionRuleLifeCycle {
  /// The type of data store. The only possible value is `VaultStore`. Changing this forces a new Backup Policy Blob Storage to be created.
  final String dataStoreType;
  /// The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  final String duration;

  /// Creates a new [BackupPolicyBlobStorageRetentionRuleLifeCycle].
  /// [dataStoreType] The type of data store. The only possible value is `VaultStore`. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [duration] The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  BackupPolicyBlobStorageRetentionRuleLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreType': dataStoreType,
      'duration': duration,
    };
  }

  factory BackupPolicyBlobStorageRetentionRuleLifeCycle.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBlobStorageRetentionRuleLifeCycle(
      dataStoreType: map['dataStoreType'] as String,
      duration: map['duration'] as String,
    );
  }
}

