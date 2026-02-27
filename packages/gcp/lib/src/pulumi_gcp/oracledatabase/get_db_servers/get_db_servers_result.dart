// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_db_servers_db_server/get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String cloudExadataInfrastructure;
  final List<GetDbServersDbServer> dbServers;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  GetDbServersResult({
    required this.cloudExadataInfrastructure,
    required this.dbServers,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructure'] = cloudExadataInfrastructure;
    map['dbServers'] =
        pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(
            dbServers, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructure: map['cloudExadataInfrastructure'] as String,
      dbServers: pulumi.Input.decodeList<GetDbServersDbServer>(
          map['dbServers'],
          (value) => GetDbServersDbServer.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
