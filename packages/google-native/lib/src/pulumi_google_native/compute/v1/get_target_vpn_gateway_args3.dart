// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetVpnGateway.
class GetTargetVpnGatewayArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetVpnGateway;

  GetTargetVpnGatewayArgs3({
    this.project,
    required this.region,
    required this.targetVpnGateway,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetVpnGateway'] = targetVpnGateway;
    return map;
  }

  factory GetTargetVpnGatewayArgs3.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetVpnGateway: Input.asInput<String>(map['targetVpnGateway']),
    );
  }
}
