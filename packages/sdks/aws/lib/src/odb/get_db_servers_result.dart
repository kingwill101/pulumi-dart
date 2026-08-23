// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String cloudExadataInfrastructureId;
  /// the list of DB servers along with their properties.
  final List<GetDbServersDbServer> dbServers;
  final String region;

  /// Creates a new [GetDbServersResult].
  /// [cloudExadataInfrastructureId] Required.
  /// [dbServers] the list of DB servers along with their properties.
  /// [region] Required.
  const GetDbServersResult({
    required this.cloudExadataInfrastructureId,
    required this.dbServers,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'dbServers': pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(dbServers, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] as String,
      dbServers: pulumi.Input.decodeList<GetDbServersDbServer>(map['dbServers']!, (value) => GetDbServersDbServer.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
