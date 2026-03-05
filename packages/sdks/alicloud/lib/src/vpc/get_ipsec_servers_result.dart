// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipsec_servers_server.dart';

/// Result data returned by getIpsecServers.
class GetIpsecServersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The name of the IPsec server.
  final String? ipsecServerName;
  final String? nameRegex;
  /// A list of Ipsec Server names.
  final List<String> names;
  final String? outputFile;
  /// A list of Vpn Ipsec Servers. Each element contains the following attributes:
  final List<GetIpsecServersServer> servers;
  /// The ID of the VPN gateway.
  final String? vpnGatewayId;

  /// Creates a new [GetIpsecServersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipsecServerName] The name of the IPsec server.
  /// [nameRegex] Optional.
  /// [names] A list of Ipsec Server names.
  /// [outputFile] Optional.
  /// [servers] A list of Vpn Ipsec Servers. Each element contains the following attributes:
  /// [vpnGatewayId] The ID of the VPN gateway.
  GetIpsecServersResult({
    required this.id,
    required this.ids,
    this.ipsecServerName,
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
      'ipsecServerName': ?ipsecServerName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'servers': pulumi.Input.encodeList<GetIpsecServersServer, Map<String, dynamic>>(servers, (value) => value.toMap()),
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetIpsecServersResult.fromMap(Map<String, dynamic> map) {
    return GetIpsecServersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipsecServerName: (() { final guardedValue = map['ipsecServerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servers: pulumi.Input.decodeList<GetIpsecServersServer>(map['servers']!, (value) => GetIpsecServersServer.fromMap((value as Map).cast<String, dynamic>())),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

