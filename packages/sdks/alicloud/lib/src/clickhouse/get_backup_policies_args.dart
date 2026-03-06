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
  const GetBackupPoliciesArgs({
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
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

