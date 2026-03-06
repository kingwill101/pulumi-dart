// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_vpn_servers_server.dart';

/// Result data returned by getSslVpnServers.
class GetSslVpnServersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of SSL-VPN server IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of SSL-VPN server names.
  final List<String> names;
  final String? outputFile;
  /// A list of SSL-VPN servers. Each element contains the following attributes:
  final List<GetSslVpnServersServer> servers;
  /// The ID of the VPN gateway instance.
  final String? vpnGatewayId;

  /// Creates a new [GetSslVpnServersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SSL-VPN server IDs.
  /// [nameRegex] Optional.
  /// [names] A list of SSL-VPN server names.
  /// [outputFile] Optional.
  /// [servers] A list of SSL-VPN servers. Each element contains the following attributes:
  /// [vpnGatewayId] The ID of the VPN gateway instance.
  const GetSslVpnServersResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.servers,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'servers': pulumi.Input.encodeList<GetSslVpnServersServer, Map<String, dynamic>>(servers, (value) => value.toMap()),
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetSslVpnServersResult.fromMap(Map<String, dynamic> map) {
    return GetSslVpnServersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servers: pulumi.Input.decodeList<GetSslVpnServersServer>(map['servers']!, (value) => GetSslVpnServersServer.fromMap((value as Map).cast<String, dynamic>())),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

