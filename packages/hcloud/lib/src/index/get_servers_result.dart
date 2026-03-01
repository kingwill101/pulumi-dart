// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_servers_server.dart';

/// Result data returned by getServers.
class GetServersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (list) List of all matching servers. See `data.hcloud_server` for schema.
  final List<GetServersServer> servers;
  final String? withSelector;
  final List<String>? withStatuses;

  /// Creates a new [GetServersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [servers] (list) List of all matching servers. See `data.hcloud_server` for schema.
  /// [withSelector] Optional.
  /// [withStatuses] Optional.
  GetServersResult({
    required this.id,
    required this.servers,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'servers': pulumi.Input.encodeList<GetServersServer, Map<String, dynamic>>(servers, (value) => value.toMap()),
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetServersResult.fromMap(Map<String, dynamic> map) {
    return GetServersResult(
      id: map['id'] as String,
      servers: pulumi.Input.decodeList<GetServersServer>(map['servers'], (value) => GetServersServer.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
      withStatuses: map['withStatuses'] == null ? null : (map['withStatuses'] as List).cast<String>(),
    );
  }
}

