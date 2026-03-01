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
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clusterId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
    required pulumi.Output<String> vaultId,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status),
      vaultId = pulumi.Input.asInput<String>(vaultId);

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
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vaultId: pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

