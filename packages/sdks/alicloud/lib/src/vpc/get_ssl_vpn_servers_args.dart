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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.vpnGatewayId,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnGatewayId: (() {
        final guardedValue = map['vpnGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
