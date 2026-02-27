// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVpnTunnel.
class GetVpnTunnelComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnTunnel;

  GetVpnTunnelComputeV1Args({
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

  factory GetVpnTunnelComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      vpnTunnel: pulumi.Input.asInput<String>(map['vpnTunnel']),
    );
  }
}
