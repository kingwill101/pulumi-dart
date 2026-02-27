// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetVpnGateway.
class GetTargetVpnGatewayComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetVpnGateway;

  GetTargetVpnGatewayComputeBetaArgs({
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

  factory GetTargetVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetVpnGateway: pulumi.Input.asInput<String>(map['targetVpnGateway']),
    );
  }
}
