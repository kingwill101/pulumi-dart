// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_db_servers_db_server/get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String cloudExadataInfrastructureId;

  /// the list of DB servers along with their properties.
  final List<GetDbServersDbServer> dbServers;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetDbServersResult({
    required this.cloudExadataInfrastructureId,
    required this.dbServers,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    map['dbServers'] =
        pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(
            dbServers, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      dbServers: pulumi.Input.decodeList<GetDbServersDbServer>(
          map['dbServers'],
          (value) => GetDbServersDbServer.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
