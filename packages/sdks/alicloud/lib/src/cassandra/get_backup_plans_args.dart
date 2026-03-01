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
  GetBackupPlansArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? outputFile,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'outputFile': ?outputFile,
    };
  }

  factory GetBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

