// ignore_for_file: unused_element, unnecessary_cast


class BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle {
  /// The type of data store. The only possible value is `VaultStore`. Changing this forces a new resource to be created.
  final String dataStoreType;
  /// The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  final String duration;

  /// Creates a new [BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle].
  /// [dataStoreType] The type of data store. The only possible value is `VaultStore`. Changing this forces a new resource to be created.
  /// [duration] The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle({
    required this.dataStoreType,
    required this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreType': dataStoreType,
      'duration': duration,
    };
  }

  factory BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle(
      dataStoreType: map['dataStoreType'] as String,
      duration: map['duration'] as String,
    );
  }
}

