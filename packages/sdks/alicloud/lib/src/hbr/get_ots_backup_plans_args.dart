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
      planId: (() {
        final guardedValue = map['planId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planName: (() {
        final guardedValue = map['planName'];
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
