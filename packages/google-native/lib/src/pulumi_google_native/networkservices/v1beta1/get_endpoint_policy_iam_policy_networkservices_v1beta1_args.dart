// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEndpointPolicyIamPolicy.
class GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args({
    required this.endpointPolicyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointPolicyId'] = endpointPolicyId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args(
      endpointPolicyId: pulumi.Input.asInput<String>(map['endpointPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
