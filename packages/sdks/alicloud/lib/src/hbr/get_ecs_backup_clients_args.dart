// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_ecs_backup_clients_get_ecs_backup_clients_args_doc}
/// Arguments for getEcsBackupClients.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_ecs_backup_clients_get_ecs_backup_clients_args_doc}
class GetEcsBackupClientsArgs {
  /// A list of Ecs Backup Client IDs.
  final pulumi.Input<List<String>>? ids;
  /// A list of ECS Instance IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `REGISTERED`, `STOPPED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `UNKNOWN`, `UPGRADE_FAILED`, `UPGRADING`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetEcsBackupClientsArgs].
  /// [ids] A list of Ecs Backup Client IDs.
  /// [instanceIds] A list of ECS Instance IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `REGISTERED`, `STOPPED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `UNKNOWN`, `UPGRADE_FAILED`, `UPGRADING`.
  GetEcsBackupClientsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<List<String>>? instanceIds,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceIds = pulumi.Input.asOptionalInput<List<String>>(instanceIds),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceIds': ?instanceIds,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetEcsBackupClientsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsBackupClientsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceIds: map['instanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

