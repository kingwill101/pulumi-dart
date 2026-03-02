// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouse_get_backup_policies_get_backup_policies_args_doc}
/// Arguments for getBackupPolicies.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_get_backup_policies_get_backup_policies_args_doc}
class GetBackupPoliciesArgs {
  /// The db cluster id.
  final pulumi.Input<String> dbClusterId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBackupPoliciesArgs].
  /// [dbClusterId] The db cluster id.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetBackupPoliciesArgs({
    required this.dbClusterId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'outputFile': ?outputFile,
    };
  }

  factory GetBackupPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesArgs(
      dbClusterId: (map['dbClusterId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

