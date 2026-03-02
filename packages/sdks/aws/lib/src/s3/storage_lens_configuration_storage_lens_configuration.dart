// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_account_level.dart';
import 'storage_lens_configuration_storage_lens_configuration_aws_org.dart';
import 'storage_lens_configuration_storage_lens_configuration_data_export.dart';
import 'storage_lens_configuration_storage_lens_configuration_exclude.dart';
import 'storage_lens_configuration_storage_lens_configuration_include.dart';

class StorageLensConfigurationStorageLensConfiguration {
  /// The account-level configurations of the S3 Storage Lens configuration. See Account Level below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevel> accountLevel;
  /// The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAwsOrg>? awsOrg;
  /// Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExport>? dataExport;
  /// Whether the S3 Storage Lens configuration is enabled.
  final pulumi.Input<bool> enabled;
  /// What is excluded in this configuration. Conflicts with `include`. See Exclude below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExclude>? exclude;
  /// What is included in this configuration. Conflicts with `exclude`. See Include below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationInclude>? include;

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
      'accountLevel': pulumi.Input.mapInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevel, Map<String, dynamic>>(accountLevel, (value) => value.toMap()),
      'awsOrg': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAwsOrg, Map<String, dynamic>>(awsOrg, (value) => value.toMap()),
      'dataExport': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExport, Map<String, dynamic>>(dataExport, (value) => value.toMap()),
      'enabled': enabled,
      'exclude': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfiguration(
      accountLevel: (StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap((map['accountLevel']! as Map).cast<String, dynamic>())).input(),
      awsOrg: map['awsOrg'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationAwsOrg.fromMap((map['awsOrg']! as Map).cast<String, dynamic>())).input()).input(),
      dataExport: map['dataExport'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationDataExport.fromMap((map['dataExport']! as Map).cast<String, dynamic>())).input()).input(),
      enabled: (map['enabled'] as bool).input(),
      exclude: map['exclude'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationExclude.fromMap((map['exclude']! as Map).cast<String, dynamic>())).input()).input(),
      include: map['include'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationInclude.fromMap((map['include']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

