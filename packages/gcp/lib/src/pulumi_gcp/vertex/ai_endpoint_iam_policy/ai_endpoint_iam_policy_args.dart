// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AiEndpointIamPolicy.
class AiEndpointIamPolicyArgs {
  final Input<String> endpoint;
  final Input<String>? location;
  final Input<String> policyData;
  final Input<String>? project;

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
      endpoint: Input.asInput<String>(map['endpoint']),
      location: Input.asOptionalInput<String>(map['location']),
      policyData: Input.asInput<String>(map['policyData']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
