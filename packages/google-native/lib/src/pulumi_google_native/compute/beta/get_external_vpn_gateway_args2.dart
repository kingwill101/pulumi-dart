// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExternalVpnGateway.
class GetExternalVpnGatewayArgs2 {
  final Input<String> externalVpnGateway;
  final Input<String>? project;

  GetExternalVpnGatewayArgs2({
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

  factory GetExternalVpnGatewayArgs2.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayArgs2(
      externalVpnGateway: Input.asInput<String>(map['externalVpnGateway']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
