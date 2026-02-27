// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExternalVpnGateway.
class GetExternalVpnGatewayComputeBetaArgs {
  final pulumi.Input<String> externalVpnGateway;
  final pulumi.Input<String>? project;

  GetExternalVpnGatewayComputeBetaArgs({
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

  factory GetExternalVpnGatewayComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetExternalVpnGatewayComputeBetaArgs(
      externalVpnGateway:
          pulumi.Input.asInput<String>(map['externalVpnGateway']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
