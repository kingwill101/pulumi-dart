// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getVpnTunnel.
class GetVpnTunnelArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> vpnTunnel;

  GetVpnTunnelArgs3({
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

  factory GetVpnTunnelArgs3.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      vpnTunnel: Input.asInput<String>(map['vpnTunnel']),
    );
  }
}
