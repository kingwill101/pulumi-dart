// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_ecs_backup_plans_get_ecs_backup_plans_args_doc}
/// Arguments for getEcsBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_ecs_backup_plans_get_ecs_backup_plans_args_doc}
class GetEcsBackupPlansArgs {
  /// A list of EcsBackupPlan IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ECS instance ID of the EcsBackupPlan used.
  final pulumi.Input<String>? instanceId;
  /// A regex string to filter results by EcsBackupPlan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Vault ID of the EcsBackupPlan used.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [GetEcsBackupPlansArgs].
  /// [ids] A list of EcsBackupPlan IDs.
  /// [instanceId] The ECS instance ID of the EcsBackupPlan used.
  /// [nameRegex] A regex string to filter results by EcsBackupPlan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [vaultId] The Vault ID of the EcsBackupPlan used.
  GetEcsBackupPlansArgs({
    this.ids,
    this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'vaultId': ?vaultId,
    };
  }

  factory GetEcsBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsBackupPlansArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

