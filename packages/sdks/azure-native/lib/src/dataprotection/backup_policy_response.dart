// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_backup_rule_response.dart';

/// Rule based backup policy
class BackupPolicyResponse {
  /// Type of datasource for the backup management
  final List<String> datasourceTypes;
  /// Expected value is 'BackupPolicy'.
  final String objectType;
  /// Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  final List<AzureBackupRuleResponse> policyRules;

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
      'policyRules': pulumi.Input.encodeList<AzureBackupRuleResponse, Map<String, dynamic>>(policyRules, (value) => value.toMap()),
    };
  }

  factory BackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BackupPolicyResponse(
      datasourceTypes: (map['datasourceTypes'] as List).cast<String>(),
      objectType: map['objectType'] as String,
      policyRules: pulumi.Input.decodeList<AzureBackupRuleResponse>(map['policyRules'], (value) => AzureBackupRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

