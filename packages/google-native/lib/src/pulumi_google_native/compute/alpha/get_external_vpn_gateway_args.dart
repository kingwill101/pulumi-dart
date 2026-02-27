// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getExternalVpnGateway.
class GetExternalVpnGatewayArgs {
  final Input<String> externalVpnGateway;
  final Input<String>? project;

  GetExternalVpnGatewayArgs({
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

  factory GetExternalVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayArgs(
      externalVpnGateway: Input.asInput<String>(map['externalVpnGateway']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
