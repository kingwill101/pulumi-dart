// ignore_for_file: unused_element, unnecessary_cast

import 'storage_lens_configuration_storage_lens_configuration_account_level.dart';
import 'storage_lens_configuration_storage_lens_configuration_aws_org.dart';
import 'storage_lens_configuration_storage_lens_configuration_data_export.dart';
import 'storage_lens_configuration_storage_lens_configuration_exclude.dart';
import 'storage_lens_configuration_storage_lens_configuration_include.dart';

class StorageLensConfigurationStorageLensConfiguration {
  /// The account-level configurations of the S3 Storage Lens configuration. See Account Level below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevel accountLevel;
  /// The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details.
  final StorageLensConfigurationStorageLensConfigurationAwsOrg? awsOrg;
  /// Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details.
  final StorageLensConfigurationStorageLensConfigurationDataExport? dataExport;
  /// Whether the S3 Storage Lens configuration is enabled.
  final bool enabled;
  /// What is excluded in this configuration. Conflicts with `include`. See Exclude below for more details.
  final StorageLensConfigurationStorageLensConfigurationExclude? exclude;
  /// What is included in this configuration. Conflicts with `exclude`. See Include below for more details.
  final StorageLensConfigurationStorageLensConfigurationInclude? include;

  /// Creates a new [StorageLensConfigurationStorageLensConfiguration].
  /// [accountLevel] The account-level configurations of the S3 Storage Lens configuration. See Account Level below for more details.
  /// [awsOrg] The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details.
  /// [dataExport] Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details.
  /// [enabled] Whether the S3 Storage Lens configuration is enabled.
  /// [exclude] What is excluded in this configuration. Conflicts with `include`. See Exclude below for more details.
  /// [include] What is included in this configuration. Conflicts with `exclude`. See Include below for more details.
  StorageLensConfigurationStorageLensConfiguration({
    required this.accountLevel,
    this.awsOrg,
    this.dataExport,
    required this.enabled,
    this.exclude,
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountLevel': accountLevel.toMap(),
      'awsOrg': ?awsOrg == null ? null : awsOrg!.toMap(),
      'dataExport': ?dataExport == null ? null : dataExport!.toMap(),
      'enabled': enabled,
      'exclude': ?exclude == null ? null : exclude!.toMap(),
      'include': ?include == null ? null : include!.toMap(),
    };
  }

  factory StorageLensConfigurationStorageLensConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfiguration(
      accountLevel: StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap((map['accountLevel'] as Map).cast<String, dynamic>()),
      awsOrg: map['awsOrg'] == null ? null : StorageLensConfigurationStorageLensConfigurationAwsOrg.fromMap((map['awsOrg'] as Map).cast<String, dynamic>()),
      dataExport: map['dataExport'] == null ? null : StorageLensConfigurationStorageLensConfigurationDataExport.fromMap((map['dataExport'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      exclude: map['exclude'] == null ? null : StorageLensConfigurationStorageLensConfigurationExclude.fromMap((map['exclude'] as Map).cast<String, dynamic>()),
      include: map['include'] == null ? null : StorageLensConfigurationStorageLensConfigurationInclude.fromMap((map['include'] as Map).cast<String, dynamic>()),
    );
  }
}

