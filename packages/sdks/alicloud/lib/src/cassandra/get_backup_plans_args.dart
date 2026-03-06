// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cassandra_get_backup_plans_get_backup_plans_args_doc}
/// Arguments for getBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_cassandra_get_backup_plans_get_backup_plans_args_doc}
class GetBackupPlansArgs {
  /// The ID of the cluster for the backup.
  final pulumi.Input<String> clusterId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBackupPlansArgs].
  /// [clusterId] The ID of the cluster for the backup.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetBackupPlansArgs({
    required this.clusterId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'outputFile': ?outputFile,
    };
  }

  factory GetBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

