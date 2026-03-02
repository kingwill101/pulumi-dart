// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_ots_backup_plans_get_ots_backup_plans_args_doc}
/// Arguments for getOtsBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_ots_backup_plans_get_ots_backup_plans_args_doc}
class GetOtsBackupPlansArgs {
  /// A list of OtsBackupPlan IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by OtsBackupPlan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the backup plan.
  final pulumi.Input<String>? planId;
  /// The ID of the backup plan.
  final pulumi.Input<String>? planName;
  /// The ID of backup vault the OtsBackupPlan used.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [GetOtsBackupPlansArgs].
  /// [ids] A list of OtsBackupPlan IDs.
  /// [nameRegex] A regex string to filter results by OtsBackupPlan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [planId] The ID of the backup plan.
  /// [planName] The ID of the backup plan.
  /// [vaultId] The ID of backup vault the OtsBackupPlan used.
  GetOtsBackupPlansArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.planId,
    this.planName,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'planId': ?planId,
      'planName': ?planName,
      'vaultId': ?vaultId,
    };
  }

  factory GetOtsBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetOtsBackupPlansArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      planId: map['planId'] == null ? null : (map['planId'] as String).input(),
      planName: map['planName'] == null ? null : (map['planName'] as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

