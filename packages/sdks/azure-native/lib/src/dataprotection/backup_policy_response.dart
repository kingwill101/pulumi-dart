// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule based backup policy
class BackupPolicyResponse {
  /// Type of datasource for the backup management
  final pulumi.Input<List<String>> datasourceTypes;
  /// Expected value is 'BackupPolicy'.
  final pulumi.Input<String> objectType;
  /// Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  final pulumi.Input<List<dynamic>> policyRules;

  /// Creates a new [BackupPolicyResponse].
  /// [datasourceTypes] Type of datasource for the backup management
  /// [objectType] Expected value is 'BackupPolicy'.
  /// [policyRules] Policy rule dictionary that contains rules for each backuptype i.e Full/Incremental/Logs etc
  const BackupPolicyResponse({
    required this.datasourceTypes,
    required this.objectType,
    required this.policyRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceTypes': datasourceTypes,
      'objectType': objectType,
      'policyRules': policyRules,
    };
  }

  factory BackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BackupPolicyResponse(
      datasourceTypes: pulumi.Input.fromValue((map['datasourceTypes'] as List).cast<String>()),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      policyRules: pulumi.Input.fromValue((map['policyRules'] as List).cast<dynamic>()),
    );
  }
}
