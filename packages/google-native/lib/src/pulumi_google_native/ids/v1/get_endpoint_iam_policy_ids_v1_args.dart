// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEndpointIamPolicy.
class GetEndpointIamPolicyIdsV1Args {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetEndpointIamPolicyIdsV1Args({
    required this.endpointId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointId'] = endpointId;
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

  factory GetEndpointIamPolicyIdsV1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointIamPolicyIdsV1Args(
      endpointId: pulumi.Input.asInput<String>(map['endpointId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
