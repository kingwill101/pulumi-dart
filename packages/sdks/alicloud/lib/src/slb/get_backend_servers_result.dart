// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_servers_backend_server.dart';

/// Result data returned by getBackendServers.
class GetBackendServersResult {
  final List<GetBackendServersBackendServer> backendServers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String loadBalancerId;
  final String? outputFile;

  /// Creates a new [GetBackendServersResult].
  /// [backendServers] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [loadBalancerId] Required.
  /// [outputFile] Optional.
  GetBackendServersResult({
    required this.backendServers,
    required this.id,
    required this.ids,
    required this.loadBalancerId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendServers': pulumi.Input.encodeList<GetBackendServersBackendServer, Map<String, dynamic>>(backendServers, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetBackendServersResult.fromMap(Map<String, dynamic> map) {
    return GetBackendServersResult(
      backendServers: pulumi.Input.decodeList<GetBackendServersBackendServer>(map['backendServers']!, (value) => GetBackendServersBackendServer.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      loadBalancerId: map['loadBalancerId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

