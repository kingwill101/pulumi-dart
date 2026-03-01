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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? ipsecServerName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? vpnGatewayId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipsecServerName = pulumi.Input.asOptionalInput<String>(ipsecServerName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      ipsecServerName: map['ipsecServerName'] == null ? null : pulumi.Output.create<String>(map['ipsecServerName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}

