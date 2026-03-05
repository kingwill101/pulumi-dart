// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_backup_rule_response.dart';

/// Rule based backup policy
class BackupPolicyResponse {
  /// Type of datasource for the backup management
  final pulumi.Input<List<String>> datasourceTypes;
  /// Expected value is 'BackupPolicy'.
  final pulumi.Input<String> objectType;
  /// Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  final pulumi.Input<List<AzureBackupRuleResponse>> policyRules;

  /// Creates a new [BackupPolicyResponse].
  /// [datasourceTypes] Type of datasource for the backup management
  /// [objectType] Expected value is 'BackupPolicy'.
  /// [policyRules] Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  BackupPolicyResponse({
    required this.datasourceTypes,
    required this.objectType,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceTypes': datasourceTypes,
      'objectType': objectType,
      'policyRules': pulumi.Input.mapInputValue<List<AzureBackupRuleResponse>, List<Map<String, dynamic>>>(policyRules, (value) => pulumi.Input.encodeList<AzureBackupRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BackupPolicyResponse(
      datasourceTypes: pulumi.Input.fromValue((map['datasourceTypes'] as List).cast<String>()),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      policyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<AzureBackupRuleResponse>(map['policyRules']!, (value) => AzureBackupRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

