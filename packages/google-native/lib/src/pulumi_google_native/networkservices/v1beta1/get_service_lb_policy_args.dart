// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceLbPolicy.
class GetServiceLbPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceLbPolicyId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceLbPolicyId: Input.asInput<String>(map['serviceLbPolicyId']),
    );
  }
}
