// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVpnGateway.
class GetVpnGatewayComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnGateway;

  GetVpnGatewayComputeV1Args({
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

  factory GetVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      vpnGateway: pulumi.Input.asInput<String>(map['vpnGateway']),
    );
  }
}
