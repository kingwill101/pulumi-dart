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
    this.bucket,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.vaultId,
  });

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
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vaultId: (() {
        final guardedValue = map['vaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
