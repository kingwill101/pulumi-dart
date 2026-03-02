// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_hana_backup_clients_get_hana_backup_clients_args_doc}
/// Arguments for getHanaBackupClients.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_hana_backup_clients_get_hana_backup_clients_args_doc}
class GetHanaBackupClientsArgs {
  /// The ID of the backup client.
  final pulumi.Input<String>? clientId;
  /// The ID of the SAP HANA instance.
  final pulumi.Input<String>? clusterId;
  /// A list of Hana Backup Client IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the Hana Backup Client. Valid Values: `REGISTERED`, `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `UPGRADING`, `UPGRADE_FAILED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `STOPPED`, `UNKNOWN`.
  final pulumi.Input<String>? status;
  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetHanaBackupClientsArgs].
  /// [clientId] The ID of the backup client.
  /// [clusterId] The ID of the SAP HANA instance.
  /// [ids] A list of Hana Backup Client IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the Hana Backup Client. Valid Values: `REGISTERED`, `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `UPGRADING`, `UPGRADE_FAILED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `STOPPED`, `UNKNOWN`.
  /// [vaultId] The ID of the backup vault.
  GetHanaBackupClientsArgs({
    this.clientId,
    this.clusterId,
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clusterId': ?clusterId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'vaultId': vaultId,
    };
  }

  factory GetHanaBackupClientsArgs.fromMap(Map<String, dynamic> map) {
    return GetHanaBackupClientsArgs(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

