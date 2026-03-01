// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_vpn_tunnel_args_doc}
/// Arguments for getVpnTunnel.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_vpn_tunnel_args_doc}
class GetVpnTunnelArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnTunnel;

  /// Creates a new [GetVpnTunnelArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnTunnel] Required.
  GetVpnTunnelArgs({
    String? project,
    required String region,
    required String vpnTunnel,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       vpnTunnel = pulumi.Input.asInput<String>(vpnTunnel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'vpnTunnel': vpnTunnel,
    };
  }

  factory GetVpnTunnelArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      vpnTunnel: map['vpnTunnel'] as String,
    );
  }
}
