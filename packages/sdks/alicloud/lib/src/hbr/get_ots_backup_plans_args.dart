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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? planId,
    pulumi.Output<String>? planName,
    pulumi.Output<String>? vaultId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      planId: map['planId'] == null ? null : pulumi.Output.create<String>(map['planId'] as String),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

