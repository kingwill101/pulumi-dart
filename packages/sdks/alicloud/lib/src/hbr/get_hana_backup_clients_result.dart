// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hana_backup_clients_hana_backup_client.dart';

/// Result data returned by getHanaBackupClients.
class GetHanaBackupClientsResult {
  /// The ID of the backup client.
  final String? clientId;
  /// The ID of the SAP HANA instance.
  final String? clusterId;
  /// A list of Hana Backup Clients. Each element contains the following attributes:
  final List<GetHanaBackupClientsHanaBackupClient> hanaBackupClients;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The status of the backup client.
  final String? status;
  /// The ID of the backup vault.
  final String vaultId;

  /// Creates a new [GetHanaBackupClientsResult].
  /// [clientId] The ID of the backup client.
  /// [clusterId] The ID of the SAP HANA instance.
  /// [hanaBackupClients] A list of Hana Backup Clients. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the backup client.
  /// [vaultId] The ID of the backup vault.
  const GetHanaBackupClientsResult({
    this.clientId,
    this.clusterId,
    required this.hanaBackupClients,
    required this.id,
    required this.ids,
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
      'hanaBackupClients': pulumi.Input.encodeList<GetHanaBackupClientsHanaBackupClient, Map<String, dynamic>>(hanaBackupClients, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'vaultId': vaultId,
    };
  }

  factory GetHanaBackupClientsResult.fromMap(Map<String, dynamic> map) {
    return GetHanaBackupClientsResult(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hanaBackupClients: pulumi.Input.decodeList<GetHanaBackupClientsHanaBackupClient>(map['hanaBackupClients']!, (value) => GetHanaBackupClientsHanaBackupClient.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vaultId: map['vaultId'] as String,
    );
  }
}

