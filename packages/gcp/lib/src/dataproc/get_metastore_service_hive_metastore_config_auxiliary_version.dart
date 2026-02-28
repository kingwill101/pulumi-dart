// ignore_for_file: unused_element, unnecessary_cast


class GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
  /// If keys are present in both the auxiliary version's overrides and the primary version's overrides, the value from the auxiliary version's overrides takes precedence.
  final Map<String, String> configOverrides;
  final String key;
  /// The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version.
  final String version;

  /// Creates a new [GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion].
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hive metastore (configured in hive-site.xml) in addition to the primary version's overrides.
  /// [key] Required.
  /// [version] The Hive metastore version of the auxiliary service. It must be less than the primary Hive metastore service's version.
  GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion({
    required this.configOverrides,
    required this.key,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configOverrides': configOverrides,
      'key': key,
      'version': version,
    };
  }

  factory GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion(
      configOverrides: (map['configOverrides'] as Map).cast<String, String>(),
      key: map['key'] as String,
      version: map['version'] as String,
    );
  }
}

