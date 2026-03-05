// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_nas_backup_plans_get_nas_backup_plans_args_doc}
/// Arguments for getNasBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_nas_backup_plans_get_nas_backup_plans_args_doc}
class GetNasBackupPlansArgs {
  /// The Nas fileSystem instance ID of the EcsBackupPlan used.
  final pulumi.Input<String>? fileSystemId;
  /// A list of NasBackupPlan IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by NasBackupPlan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The backup vault ID of the NasBackupPlan used.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [GetNasBackupPlansArgs].
  /// [fileSystemId] The Nas fileSystem instance ID of the EcsBackupPlan used.
  /// [ids] A list of NasBackupPlan IDs.
  /// [nameRegex] A regex string to filter results by NasBackupPlan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [vaultId] The backup vault ID of the NasBackupPlan used.
  GetNasBackupPlansArgs({
    this.fileSystemId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'vaultId': ?vaultId,
    };
  }

  factory GetNasBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetNasBackupPlansArgs(
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

