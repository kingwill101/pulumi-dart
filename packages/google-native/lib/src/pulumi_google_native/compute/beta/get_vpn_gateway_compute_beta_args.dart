// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVpnGateway.
class GetVpnGatewayComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnGateway;

  GetVpnGatewayComputeBetaArgs({
    this.project,
    required this.region,
    required this.vpnGateway,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['vpnGateway'] = vpnGateway;
    return map;
  }

  factory GetVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      vpnGateway: pulumi.Input.asInput<String>(map['vpnGateway']),
    );
  }
}
