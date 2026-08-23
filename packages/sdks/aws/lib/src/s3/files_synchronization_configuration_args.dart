// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_synchronization_configuration_expiration_data_rule.dart';
import 'files_synchronization_configuration_import_data_rule.dart';

/// {@template pulumi_s3_files_synchronization_configuration_files_synchronization_configuration_args_doc}
/// The set of arguments for FilesSynchronizationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_files_synchronization_configuration_files_synchronization_configuration_args_doc}
class FilesSynchronizationConfigurationArgs {
  /// Expiration data rule configuration. See `expirationDataRule` below.
  final pulumi.Input<List<FilesSynchronizationConfigurationExpirationDataRule>>? expirationDataRules;
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String> fileSystemId;
  /// One or more import data rules. See `importDataRule` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FilesSynchronizationConfigurationImportDataRule>>? importDataRules;
  /// Latest synchronization configuration version number.
  final pulumi.Input<int>? latestVersionNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FilesSynchronizationConfigurationArgs].
  /// [expirationDataRules] Expiration data rule configuration. See `expirationDataRule` below.
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [importDataRules] One or more import data rules. See `importDataRule` below.
  /// [latestVersionNumber] Latest synchronization configuration version number.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const FilesSynchronizationConfigurationArgs({
    this.expirationDataRules,
    required this.fileSystemId,
    this.importDataRules,
    this.latestVersionNumber,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDataRules': ?pulumi.Input.mapOptionalInputValue<List<FilesSynchronizationConfigurationExpirationDataRule>, List<Map<String, dynamic>>>(expirationDataRules, (value) => pulumi.Input.encodeList<FilesSynchronizationConfigurationExpirationDataRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystemId': fileSystemId,
      'importDataRules': ?pulumi.Input.mapOptionalInputValue<List<FilesSynchronizationConfigurationImportDataRule>, List<Map<String, dynamic>>>(importDataRules, (value) => pulumi.Input.encodeList<FilesSynchronizationConfigurationImportDataRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latestVersionNumber': ?latestVersionNumber,
      'region': ?region,
    };
  }

  factory FilesSynchronizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return FilesSynchronizationConfigurationArgs(
      expirationDataRules: (() { final guardedValue = map['expirationDataRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesSynchronizationConfigurationExpirationDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationExpirationDataRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      importDataRules: (() { final guardedValue = map['importDataRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesSynchronizationConfigurationImportDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationImportDataRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      latestVersionNumber: (() { final guardedValue = map['latestVersionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
