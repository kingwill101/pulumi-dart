// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVpnTunnel.
class GetVpnTunnelArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> vpnTunnel;

  GetVpnTunnelArgs({
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

  factory GetVpnTunnelArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      vpnTunnel: Input.asInput<String>(map['vpnTunnel']),
    );
  }
}
