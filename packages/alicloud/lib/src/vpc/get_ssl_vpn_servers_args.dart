// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ssl_vpn_servers_get_ssl_vpn_servers_args_doc}
/// Arguments for getSslVpnServers.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ssl_vpn_servers_get_ssl_vpn_servers_args_doc}
class GetSslVpnServersArgs {
  /// IDs of the SSL-VPN servers.
  final pulumi.Input<List<String>>? ids;
  /// A regex string of SSL-VPN server name.
  final pulumi.Input<String>? nameRegex;
  /// Save the result to the file.
  final pulumi.Input<String>? outputFile;
  /// Use the VPN gateway ID as the search key.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [GetSslVpnServersArgs].
  /// [ids] IDs of the SSL-VPN servers.
  /// [nameRegex] A regex string of SSL-VPN server name.
  /// [outputFile] Save the result to the file.
  /// [vpnGatewayId] Use the VPN gateway ID as the search key.
  GetSslVpnServersArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? vpnGatewayId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetSslVpnServersArgs.fromMap(Map<String, dynamic> map) {
    return GetSslVpnServersArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      vpnGatewayId: map['vpnGatewayId'] == null ? null : map['vpnGatewayId'] as String,
    );
  }
}

