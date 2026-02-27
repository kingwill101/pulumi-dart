// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEndpointPolicy.
class GetEndpointPolicyArgs2 {
  final Input<String> endpointPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetEndpointPolicyArgs2({
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

  factory GetEndpointPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyArgs2(
      endpointPolicyId: Input.asInput<String>(map['endpointPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
