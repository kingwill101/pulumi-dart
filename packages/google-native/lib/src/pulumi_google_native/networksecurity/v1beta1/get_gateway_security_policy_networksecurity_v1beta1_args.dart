// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGatewaySecurityPolicy.
class GetGatewaySecurityPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetGatewaySecurityPolicyNetworksecurityV1beta1Args({
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

  factory GetGatewaySecurityPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyNetworksecurityV1beta1Args(
      gatewaySecurityPolicyId:
          pulumi.Input.asInput<String>(map['gatewaySecurityPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
