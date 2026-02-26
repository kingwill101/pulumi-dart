// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVpnGateway.
class GetVpnGatewayArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> vpnGateway;

  GetVpnGatewayArgs2({
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

  factory GetVpnGatewayArgs2.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      vpnGateway: Input.asInput<String>(map['vpnGateway']),
    );
  }
}
