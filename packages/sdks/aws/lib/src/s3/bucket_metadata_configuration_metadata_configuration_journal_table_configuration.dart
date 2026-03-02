// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_metadata_configuration_journal_table_configuration_encryption_configuration.dart';
import 'bucket_metadata_configuration_metadata_configuration_journal_table_configuration_record_expiration.dart';

class BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration {
  /// Encryption configuration for the journal table. See `encryption_configuration` Block for details.
  final pulumi.Input<BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration>? encryptionConfiguration;
  /// Journal table record expiration settings. See `record_expiration` Block for details.
  final pulumi.Input<BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration> recordExpiration;
  /// Journal table ARN.
  final pulumi.Input<String>? tableArn;
  /// Journal table name.
  final pulumi.Input<String>? tableName;

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
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'recordExpiration': pulumi.Input.mapInputValue<BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration, Map<String, dynamic>>(recordExpiration, (value) => value.toMap()),
      'tableArn': ?tableArn,
      'tableName': ?tableName,
    };
  }

  factory BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration(
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : (BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      recordExpiration: (BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration.fromMap((map['recordExpiration'] as Map).cast<String, dynamic>())).input(),
      tableArn: map['tableArn'] == null ? null : (map['tableArn'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName'] as String).input(),
    );
  }
}

