// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEndpointPolicy.
class GetEndpointPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEndpointPolicyNetworkservicesV1beta1Args({
    required this.endpointPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointPolicyId'] = endpointPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointPolicyNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetEndpointPolicyNetworkservicesV1beta1Args(
      endpointPolicyId: pulumi.Input.asInput<String>(map['endpointPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
