// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String? cloudExadataInfrastructureId;
  /// the list of DB servers along with their properties.
  final List<GetDbServersDbServer>? dbServers;
  final String? region;

  /// Creates a new [GetDbServersResult].
  /// [cloudExadataInfrastructureId] Optional.
  /// [dbServers] the list of DB servers along with their properties.
  /// [region] Optional.
  const GetDbServersResult({
    this.cloudExadataInfrastructureId,
    this.dbServers,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'dbServers': ?(() { final guardedValue = dbServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbServersDbServer>(guardedValue, (value) => GetDbServersDbServer.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
