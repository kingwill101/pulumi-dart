// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_get_connections_get_connections_args_doc}
/// Arguments for getConnections.
/// {@endtemplate}
/// {@macro pulumi_vpn_get_connections_get_connections_args_doc}
class GetConnectionsArgs {
  /// Use the VPN customer gateway ID as the search key.
  final pulumi.Input<String>? customerGatewayId;
  /// IDs of the VPN connections.
  final pulumi.Input<List<String>>? ids;
  /// A regex string of VPN connection name.
  final pulumi.Input<String>? nameRegex;
  /// Save the result to the file.
  final pulumi.Input<String>? outputFile;
  /// Use the VPN gateway ID as the search key.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [GetConnectionsArgs].
  /// [customerGatewayId] Use the VPN customer gateway ID as the search key.
  /// [ids] IDs of the VPN connections.
  /// [nameRegex] A regex string of VPN connection name.
  /// [outputFile] Save the result to the file.
  /// [vpnGatewayId] Use the VPN gateway ID as the search key.
  GetConnectionsArgs({
    this.customerGatewayId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayId': ?customerGatewayId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory GetConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionsArgs(
      customerGatewayId: map['customerGatewayId'] == null ? null : (map['customerGatewayId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : (map['vpnGatewayId']! as String).input(),
    );
  }
}

