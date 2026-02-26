// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_database_encryption_config/get_database_encryption_config.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String databaseDialect;
  final List<String> ddls;
  final String defaultTimeZone;
  final bool deletionProtection;
  final bool enableDropProtection;
  final List<GetDatabaseEncryptionConfig> encryptionConfigs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final String name;
  final String? project;
  final String state;
  final String versionRetentionPeriod;

  GetDatabaseResult({
    required this.databaseDialect,
    required this.ddls,
    required this.defaultTimeZone,
    required this.deletionProtection,
    required this.enableDropProtection,
    required this.encryptionConfigs,
    required this.id,
    required this.instance,
    required this.name,
    this.project,
    required this.state,
    required this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseDialect'] = databaseDialect;
    map['ddls'] = ddls;
    map['defaultTimeZone'] = defaultTimeZone;
    map['deletionProtection'] = deletionProtection;
    map['enableDropProtection'] = enableDropProtection;
    map['encryptionConfigs'] =
        Input.encodeList<GetDatabaseEncryptionConfig, Map<String, dynamic>>(
            encryptionConfigs, (value) => value.toMap());
    map['id'] = id;
    map['instance'] = instance;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['state'] = state;
    map['versionRetentionPeriod'] = versionRetentionPeriod;
    return map;
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      databaseDialect: map['databaseDialect'] as String,
      ddls: (map['ddls'] as List).cast<String>(),
      defaultTimeZone: map['defaultTimeZone'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      enableDropProtection: map['enableDropProtection'] as bool,
      encryptionConfigs: Input.decodeList<GetDatabaseEncryptionConfig>(
          map['encryptionConfigs'],
          (value) => GetDatabaseEncryptionConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] as String,
      versionRetentionPeriod: map['versionRetentionPeriod'] as String,
    );
  }
}
