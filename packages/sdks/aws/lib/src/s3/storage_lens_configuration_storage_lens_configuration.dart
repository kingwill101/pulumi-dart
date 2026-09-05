// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_account_level.dart';
import 'storage_lens_configuration_storage_lens_configuration_aws_org.dart';
import 'storage_lens_configuration_storage_lens_configuration_data_export.dart';
import 'storage_lens_configuration_storage_lens_configuration_exclude.dart';
import 'storage_lens_configuration_storage_lens_configuration_expanded_prefixes_data_export.dart';
import 'storage_lens_configuration_storage_lens_configuration_include.dart';

class StorageLensConfigurationStorageLensConfiguration {
  /// Account-level configurations of the S3 Storage Lens configuration. See `accountLevel` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevel> accountLevel;
  /// Amazon Web Services organization for the S3 Storage Lens configuration. See `awsOrg` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAwsOrg?>? awsOrg;
  /// Properties of S3 Storage Lens metrics export including the destination, schema and format. See `dataExport` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationDataExport?>? dataExport;
  /// Whether the S3 Storage Lens configuration is enabled.
  final pulumi.Input<bool> enabled;
  /// What is excluded in this configuration. Conflicts with `include`. See `exclude` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExclude?>? exclude;
  /// Configuration for the S3 Storage Lens expanded prefix metrics report. Unlike the default Storage Lens metrics report, the enhanced prefix metrics report includes all S3 Storage Lens storage and activity data related to the full list of prefixes in your Storage Lens configuration. See `expandedPrefixesDataExport` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport?>? expandedPrefixesDataExport;
  /// What is included in this configuration. Conflicts with `exclude`. See `include` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationInclude?>? include;
  /// Prefix delimiter used for object keys in this S3 Storage Lens configuration.
  final pulumi.Input<String?>? prefixDelimiter;

  /// Creates a new [StorageLensConfigurationStorageLensConfiguration].
  /// [accountLevel] Account-level configurations of the S3 Storage Lens configuration. See `accountLevel` below for more details.
  /// [awsOrg] Amazon Web Services organization for the S3 Storage Lens configuration. See `awsOrg` below for more details.
  /// [dataExport] Properties of S3 Storage Lens metrics export including the destination, schema and format. See `dataExport` below for more details.
  /// [enabled] Whether the S3 Storage Lens configuration is enabled.
  /// [exclude] What is excluded in this configuration. Conflicts with `include`. See `exclude` below for more details.
  /// [expandedPrefixesDataExport] Configuration for the S3 Storage Lens expanded prefix metrics report. Unlike the default Storage Lens metrics report, the enhanced prefix metrics report includes all S3 Storage Lens storage and activity data related to the full list of prefixes in your Storage Lens configuration. See `expandedPrefixesDataExport` below for more details.
  /// [include] What is included in this configuration. Conflicts with `exclude`. See `include` below for more details.
  /// [prefixDelimiter] Prefix delimiter used for object keys in this S3 Storage Lens configuration.
  const StorageLensConfigurationStorageLensConfiguration({
    required this.accountLevel,
    this.awsOrg,
    this.dataExport,
    required this.enabled,
    this.exclude,
    this.expandedPrefixesDataExport,
    this.include,
    this.prefixDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountLevel': pulumi.Input.mapInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevel, Map<String, dynamic>>(accountLevel, (value) => value.toMap()),
      'awsOrg': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAwsOrg, Map<String, dynamic>>(awsOrg, (value) => value.toMap()),
      'dataExport': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationDataExport, Map<String, dynamic>>(dataExport, (value) => value.toMap()),
      'enabled': enabled,
      'exclude': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'expandedPrefixesDataExport': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport, Map<String, dynamic>>(expandedPrefixesDataExport, (value) => value.toMap()),
      'include': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
      'prefixDelimiter': ?prefixDelimiter,
    };
  }

  factory StorageLensConfigurationStorageLensConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfiguration(
      accountLevel: pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap((map['accountLevel']! as Map).cast<String, dynamic>())),
      awsOrg: (() { final guardedValue = map['awsOrg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAwsOrg.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataExport: (() { final guardedValue = map['dataExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationDataExport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expandedPrefixesDataExport: (() { final guardedValue = map['expandedPrefixesDataExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationInclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefixDelimiter: (() { final guardedValue = map['prefixDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
