// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_backup_clients_client.dart';

/// Result data returned by getEcsBackupClients.
class GetEcsBackupClientsResult {
  final List<GetEcsBackupClientsClient> clients;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<String>? instanceIds;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetEcsBackupClientsResult].
  /// [clients] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceIds] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  const GetEcsBackupClientsResult({
    required this.clients,
    required this.id,
    required this.ids,
    this.instanceIds,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': pulumi.Input.encodeList<GetEcsBackupClientsClient, Map<String, dynamic>>(clients, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceIds': ?instanceIds,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetEcsBackupClientsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsBackupClientsResult(
      clients: pulumi.Input.decodeList<GetEcsBackupClientsClient>(map['clients']!, (value) => GetEcsBackupClientsClient.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

