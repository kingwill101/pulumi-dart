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
    this.ids,
    this.instanceIds,
    this.outputFile,
    this.status,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

