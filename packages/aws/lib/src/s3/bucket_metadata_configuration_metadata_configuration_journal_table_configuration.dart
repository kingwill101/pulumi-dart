// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_metadata_configuration_metadata_configuration_journal_table_configuration_encryption_configuration.dart';
import 'bucket_metadata_configuration_metadata_configuration_journal_table_configuration_record_expiration.dart';

class BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration {
  /// Encryption configuration for the journal table. See `encryption_configuration` Block for details.
  final BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration?
      encryptionConfiguration;

  /// Journal table record expiration settings. See `record_expiration` Block for details.
  final BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration
      recordExpiration;

  /// Journal table ARN.
  final String? tableArn;

  /// Journal table name.
  final String? tableName;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration].
  /// [encryptionConfiguration] Encryption configuration for the journal table. See `encryption_configuration` Block for details.
  /// [recordExpiration] Journal table record expiration settings. See `record_expiration` Block for details.
  /// [tableArn] Journal table ARN.
  /// [tableName] Journal table name.
  BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration({
    this.encryptionConfiguration,
    required this.recordExpiration,
    this.tableArn,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = encryptionConfigurationValue.toMap();
    }
    map['recordExpiration'] = recordExpiration.toMap();
    final tableArnValue = tableArn;
    if (tableArnValue != null) {
      map['tableArn'] = tableArnValue;
    }
    final tableNameValue = tableName;
    if (tableNameValue != null) {
      map['tableName'] = tableNameValue;
    }
    return map;
  }

  factory BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration(
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration
              .fromMap((map['encryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      recordExpiration:
          BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration
              .fromMap(
                  (map['recordExpiration'] as Map).cast<String, dynamic>()),
      tableArn: map['tableArn'] == null ? null : map['tableArn'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}
