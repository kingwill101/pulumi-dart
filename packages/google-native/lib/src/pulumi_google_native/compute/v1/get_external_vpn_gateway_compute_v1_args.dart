// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExternalVpnGateway.
class GetExternalVpnGatewayComputeV1Args {
  final pulumi.Input<String> externalVpnGateway;
  final pulumi.Input<String>? project;

  GetExternalVpnGatewayComputeV1Args({
    required this.externalVpnGateway,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalVpnGateway'] = externalVpnGateway;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExternalVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayComputeV1Args(
      externalVpnGateway:
          pulumi.Input.asInput<String>(map['externalVpnGateway']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
