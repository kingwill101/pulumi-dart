// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceLbPolicy.
class GetServiceLbPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceLbPolicyId;

  GetServiceLbPolicyArgs({
    required this.location,
    this.project,
    required this.serviceLbPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceLbPolicyId'] = serviceLbPolicyId;
    return map;
  }

  factory GetServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceLbPolicyId: pulumi.Input.asInput<String>(map['serviceLbPolicyId']),
    );
  }
}
