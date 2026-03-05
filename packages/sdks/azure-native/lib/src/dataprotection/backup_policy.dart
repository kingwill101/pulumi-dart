// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_backup_rule.dart';

/// Rule based backup policy
class BackupPolicy {
  /// Type of datasource for the backup management
  final pulumi.Input<List<String>> datasourceTypes;
  /// Expected value is 'BackupPolicy'.
  final pulumi.Input<String> objectType;
  /// Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  final pulumi.Input<List<AzureBackupRule>> policyRules;

  /// Creates a new [BackupPolicy].
  /// [datasourceTypes] Type of datasource for the backup management
  /// [objectType] Expected value is 'BackupPolicy'.
  /// [policyRules] Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  BackupPolicy({
    required this.datasourceTypes,
    required this.objectType,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceTypes': datasourceTypes,
      'objectType': objectType,
      'policyRules': pulumi.Input.mapInputValue<List<AzureBackupRule>, List<Map<String, dynamic>>>(policyRules, (value) => pulumi.Input.encodeList<AzureBackupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupPolicy.fromMap(Map<String, dynamic> map) {
    return BackupPolicy(
      datasourceTypes: pulumi.Input.fromValue((map['datasourceTypes'] as List).cast<String>()),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      policyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<AzureBackupRule>(map['policyRules']!, (value) => AzureBackupRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

