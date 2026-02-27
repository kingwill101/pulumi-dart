// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetVpnGateway.
class GetTargetVpnGatewayComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetVpnGateway;

  GetTargetVpnGatewayComputeV1Args({
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

  factory GetTargetVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetVpnGateway: pulumi.Input.asInput<String>(map['targetVpnGateway']),
    );
  }
}
