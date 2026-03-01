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
    String? fileSystemId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? vaultId,
  }) :
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

