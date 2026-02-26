// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicyArgs3 {
  final Input<String> instanceId;
  final Input<String>? location;
  final Input<String> policyData;
  final Input<String>? project;

  InstanceIamPolicyArgs3({
    required this.instanceId,
    this.location,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
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

  factory InstanceIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs3(
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      policyData: Input.asInput<String>(map['policyData']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
