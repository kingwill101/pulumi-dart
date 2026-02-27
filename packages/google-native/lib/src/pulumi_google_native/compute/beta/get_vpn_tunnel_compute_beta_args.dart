// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVpnTunnel.
class GetVpnTunnelComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnTunnel;

  GetVpnTunnelComputeBetaArgs({
    this.project,
    required this.region,
    required this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['vpnTunnel'] = vpnTunnel;
    return map;
  }

  factory GetVpnTunnelComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      vpnTunnel: pulumi.Input.asInput<String>(map['vpnTunnel']),
    );
  }
}
