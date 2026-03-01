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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? vaultId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

