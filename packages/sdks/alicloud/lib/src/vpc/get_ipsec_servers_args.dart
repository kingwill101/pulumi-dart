// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipsec_servers_get_ipsec_servers_args_doc}
/// Arguments for getIpsecServers.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipsec_servers_get_ipsec_servers_args_doc}
class GetIpsecServersArgs {
  /// A list of Ipsec Server IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the IPsec server.
  final pulumi.Input<String>? ipsecServerName;
  /// A regex string to filter results by Ipsec Server name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the VPN gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [GetIpsecServersArgs].
  /// [ids] A list of Ipsec Server IDs.
  /// [ipsecServerName] The name of the IPsec server.
  /// [nameRegex] A regex string to filter results by Ipsec Server name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [vpnGatewayId] The ID of the VPN gateway.
  GetIpsecServersArgs({
    this.ids,
    this.ipsecServerName,
    this.nameRegex,
    this.outputFile,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipsecServerName': ?ipsecServerName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetIpsecServersArgs.fromMap(Map<String, dynamic> map) {
    return GetIpsecServersArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      ipsecServerName: map['ipsecServerName'] == null ? null : (map['ipsecServerName']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : (map['vpnGatewayId']! as String).input(),
    );
  }
}

