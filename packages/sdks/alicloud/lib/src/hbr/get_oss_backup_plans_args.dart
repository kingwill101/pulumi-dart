// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_oss_backup_plans_get_oss_backup_plans_args_doc}
/// Arguments for getOssBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_oss_backup_plans_get_oss_backup_plans_args_doc}
class GetOssBackupPlansArgs {
  /// The name of OSS bucket.
  final pulumi.Input<String>? bucket;
  /// A list of OssBackupPlan IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by OssBackupPlan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of backup vault the OssBackupPlan used.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [GetOssBackupPlansArgs].
  /// [bucket] The name of OSS bucket.
  /// [ids] A list of OssBackupPlan IDs.
  /// [nameRegex] A regex string to filter results by OssBackupPlan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [vaultId] The ID of backup vault the OssBackupPlan used.
  GetOssBackupPlansArgs({
    pulumi.Output<String>? bucket,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? vaultId,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'vaultId': ?vaultId,
    };
  }

  factory GetOssBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetOssBackupPlansArgs(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

