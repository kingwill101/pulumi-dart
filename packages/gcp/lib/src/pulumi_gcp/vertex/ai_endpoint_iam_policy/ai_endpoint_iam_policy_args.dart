// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AiEndpointIamPolicy.
class AiEndpointIamPolicyArgs {
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  AiEndpointIamPolicyArgs({
    required this.endpoint,
    this.location,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AiEndpointIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamPolicyArgs(
      endpoint: pulumi.Input.asInput<String>(map['endpoint']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
