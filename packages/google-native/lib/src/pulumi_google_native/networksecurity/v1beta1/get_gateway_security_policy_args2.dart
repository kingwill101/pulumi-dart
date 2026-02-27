// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGatewaySecurityPolicy.
class GetGatewaySecurityPolicyArgs2 {
  final Input<String> gatewaySecurityPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetGatewaySecurityPolicyArgs2({
    required this.gatewaySecurityPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewaySecurityPolicyId'] = gatewaySecurityPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGatewaySecurityPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyArgs2(
      gatewaySecurityPolicyId:
          Input.asInput<String>(map['gatewaySecurityPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
