// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_policies_policy.dart';

/// Result data returned by getBackupPolicies.
class GetBackupPoliciesResult {
  final String dbClusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final List<GetBackupPoliciesPolicy> policies;

  /// Creates a new [GetBackupPoliciesResult].
  /// [dbClusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [policies] Required.
  GetBackupPoliciesResult({
    required this.dbClusterId,
    required this.id,
    this.outputFile,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'id': id,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetBackupPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
    };
  }

  factory GetBackupPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesResult(
      dbClusterId: map['dbClusterId'] as String,
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policies: pulumi.Input.decodeList<GetBackupPoliciesPolicy>(map['policies'], (value) => GetBackupPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

